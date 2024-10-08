#!/bin/bash
export MODS_DIR=`pwd`

# Last Updated: 2021-02-06
# For A19.3 (b6)

# Create the directory that we will store the modlet collection into
export MODSSUBDIR=`echo "MODLET_COLLECTION-$(date +%Y-%d-%m_%H%M%S)"`
echo "Creating $MODS_DIR/$MODSSUBDIR.."
mkdir -p $MODS_DIR/$MODSSUBDIR/servermods
mkdir -p $MODS_DIR/$MODSSUBDIR/build_modletcollection

# Download and Generate Server Manager Pack
echo "Changing Directory to: $MODS_DIR/$MODSSUBDIR/servermods"
cd $MODS_DIR/$MODSSUBDIR/servermods
MODCOUNT=`../../generate_servermods.sh`

#read -p "Press any key to resume ..."
MODCOUNT=`cat ../../MODCOUNT.txt`

# Download and Generate Modlet Collection Pack
echo "Changing Directory to: $MODS_DIR/$MODSSUBDIR/build_modletcollection"
cd ../build_modletcollection
../../generate_modletcollection.sh $MODCOUNT
cd ..

read -p "Press any key to resume ..."

# Generate Zipfile for Sanity's Edge
mkdir -p build_SanityEdgeModlets/Mods
cp -r servermods/* build_SanityEdgeModlets/Mods/
cp -r build_modletcollection/* build_SanityEdgeModlets/Mods/
cp -r build_SanityEdgeModlets/Mods/7DaysToDieServer_Data build_SanityEdgeModlets/
cd build_SanityEdgeModlets
zip -r $(date +%Y-%d-%m_%H%M%S)-Modlet_Collection-SanitysEdge.zip Mods 7DaysToDieServer_Data 2> /dev/null
cd .. && rm -rf servermods

# Generate Zipfile to be given to other people
find build_modletcollection -name 'ModInfo.xml' -exec echo {} \; > ModInfo.txt
sed 's:[^/]*$::' ModInfo.txt > ModletList.txt; rm -rf ModInfo.txt
# Loop through all the Mods found and move them to a Mods folder
mkdir Mods
while read moddir; do
  if [[ -f "$moddir/../ModURL.txt" ]]; then cp "$moddir/../ModURL.txt" "$moddir/ModURL.txt"; fi
  if [[ -f "$moddir/../../ModURL.txt" ]]; then cp "$moddir/../../ModURL.txt" "$moddir/ModURL.txt"; fi
  if [[ -f "$moddir/../../../ModURL.txt" ]]; then cp "$moddir/../../../ModURL.txt" "$moddir/ModURL.txt"; fi
  mv "$moddir" Mods/
done < ModletList.txt
# Find and delete all ModURL.txt files
#find Mods -name "ModURL.txt" -exec rm -rf {} \; 2> /dev/null
# Find and delete all README.md && LICENSE
find Mods -name "README.md" -exec rm -rf {} \; 2> /dev/null
find Mods -name "README.txt" -exec rm -rf {} \; 2> /dev/null
find Mods -name "readme.txt" -exec rm -rf {} \; 2> /dev/null
find Mods -name "readme.md" -exec rm -rf {} \; 2> /dev/null

# Delete Common GIT Files
find Mods -name "LICENSE" -exec rm -rf {} \; 2> /dev/null
find Mods -name "LICENSE.md" -exec rm -rf {} \; 2> /dev/null
find Mods -name "CONTRIBUTING.md" -exec rm -rf {} \; 2> /dev/null

# Delete Images
find Mods -name "*.png" -exec rm -rf {} \; 2> /dev/null
find Mods -name "*.jpg" -exec rm -rf {} \; 2> /dev/null
find Mods -name "*.gif" -exec rm -rf {} \; 2> /dev/null

# Find and remove all .git directories
find Mods -type d -name ".git" -exec rm -rf {} \; 2> /dev/null
find Mods -type d -name ".svn" -exec rm -rf {} \; 2> /dev/null
find Mods -type d -name ".github" -exec rm -rf {} \; 2> /dev/null
find Mods -name ".gitattributes" -exec rm -rf {} \; 2> /dev/null
find Mods -name ".gitignore" -exec rm -rf {} \; 2> /dev/null

# Copy any 7DaysToDieServerData_Data folders
cp -r build_modletcollection/*/7DaysToDieServer_Data .

# Create the .zip file of Mods & 7DaysToDieServer_Data
zip -r $(date +%Y-%d-%m_%H%M%S)-Modlet_Collection-Shouden.zip Mods 7DaysToDieServer_Data 2> /dev/null

########### CREATE COMBINED MODLET ################
# Folder that contains modlets: Mods/
../generate_combined_modlet.sh
######### END CREATE COMBINED MODLET ##############

# FINAL EXPORT AND CLEANUP
mv build_SanityEdgeModlets/*Modlet_Collection*.zip . && \
mv Mods extracted_Mods
