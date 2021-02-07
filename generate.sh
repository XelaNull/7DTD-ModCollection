#!/bin/bash
export MODS_DIR=`pwd`

# Last Updated: 2021-02-06
# For A19.3 (b6)

# Create the directory that we will store the modlet collection into
export MODSSUBDIR=`echo "MODLET_COLLECTION-$(date +%Y-%d-%m_%H%M%S)"`
echo "Creating $MODS_DIR/$MODSSUBDIR.."
mkdir -p $MODS_DIR/$MODSSUBDIR/servermods
mkdir -p $MODS_DIR/$MODSSUBDIR/modletcollection

# Download and Generate Server Manager Pack
echo "Changing Directory to: $MODS_DIR/$MODSSUBDIR/servermods"
cd $MODS_DIR/$MODSSUBDIR/servermods
../../generate_servermods.sh

# Download and Generate Modlet Collection Pack
echo "Changing Directory to: $MODS_DIR/$MODSSUBDIR/modletcollection"
cd ../modletcollection
../../generate_modletcollection.sh
cd ..

# Generate Zipfile for Sanity's Edge
mkdir -p SanitysEdge/Mods
cp -r servermods/* SanitysEdge/Mods/
cp -r modletcollection/* SanitysEdge/Mods/
cp -r SanitysEdge/Mods/*/7DaysToDieServer_Data SanitysEdge/
cd SanitysEdge
zip -r $(date +%Y-%d-%m_%H%M%S)-Modlet_Collection-SanitysEdge.zip Mods 7DaysToDieServer_Data 2> /dev/null
cd .. && rm -rf servermods

# Generate Zipfile to be given to other people
find modletcollection -name 'ModInfo.xml' -exec echo {} \; > ModInfo.txt
sed 's:[^/]*$::' ModInfo.txt > Mods.txt
# Loop through all the Mods found and move them to a Mods folder
mkdir Mods
while read moddir; do
  mv "$moddir" Mods/
done < Mods.txt
# Find and delete all ModURL.txt files
find Mods -name "ModURL.txt" -exec rm -rf {} \; 2> /dev/null
# Find and delete all README.md && LICENSE
find Mods -name "README.md" -exec rm -rf {} \; 2> /dev/null
find Mods -name "README.txt" -exec rm -rf {} \; 2> /dev/null

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
cp -r modletcollection/*/7DaysToDieServer_Data .

# Create the .zip file of Mods & 7DaysToDieServer_Data
zip -r $(date +%Y-%d-%m_%H%M%S)-Modlet_Collection-Shouden.zip Mods 7DaysToDieServer_Datan 2> /dev/null

# FINAL EXPORT AND CLEANUP
mkdir -p ../RELEASES && mv SanitysEdge/*Modlet_Collection*.zip ../RELEASES/ && mv *Modlet_Collection*.zip ../RELEASES/
cd .. && rm -rf $MODSSUBDIR
