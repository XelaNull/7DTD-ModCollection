#!/bin/bash

echo "###################################"
echo "GENERATING COMBINED MODLET"

# Create the CombinedModlet folder
rm -rf CombinedModlet 7DTD-Neopolitan; mkdir -p CombinedModlet/Config/XUi
echo '<?xml version="1.0" encoding="UTF-8" ?>
<xml>
	<ModInfo>
		<Name value="Neopolitan" />
		<Description value="7DTD Vanilla with some chocolate and strawberry modlets mixed in." />
		<Author value="Combined by Shouden Kalferas, but Authored by Many (see README)" />
		<Version value="A19.3_1.0" />	
		<Website value="None" />		
	</ModInfo>
</xml>' > CombinedModlet/ModInfo.xml

find Mods -name 'ModInfo.xml' -exec echo {} \; > ModInfo.txt
sed 's:[^/]*$::' ModInfo.txt > ModsUnsorted.txt
cat ModsUnsorted.txt | sort > Mods.txt
while read moddir; do
  ## If localization.txt exists, we should copy it to the combined file
  #echo $moddir;
  
  # Extract Mod Info
  NAME=`grep Name "$moddir/ModInfo.xml" | grep -o '".*"' | tr -d '"'`
  AUTHOR=`grep Author "$moddir/ModInfo.xml" | grep -o '".*"' | tr -d '"'`
  WEBSITE=`grep Website "$moddir/ModInfo.xml" | grep -o '".*"' | tr -d '"'`
	DLURL=`cat "$moddir/ModURL.txt"`
  DESCRIPTION=`grep Description "$moddir/ModInfo.xml" | grep -o '".*"' | tr -d '"'`
  # Write Mod and Author Data to README.md file
  echo "- $NAME by **$AUTHOR**" >> CombinedModlet/MODLIST.md
	echo "" >> CombinedModlet/MODLIST.md
  if [[ ! -z $WEBSITE ]]; then echo "  - Website: $WEBSITE" >> CombinedModlet/MODLIST.md; fi
	echo "  - Download URL: $DLURL" >> CombinedModlet/MODLIST.md
  echo "  - Description: $DESCRIPTION" >> CombinedModlet/MODLIST.md
	echo "" >> CombinedModlet/MODLIST.md

  # Handle Files named "Localization.txt"
  if [[ -f $moddir/Config/Localization.txt ]]; then
    if [[ ! -f CombinedModlet/Config/Localization.txt ]]; then
      echo "Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish" > CombinedModlet/Config/Localization.txt
    fi
    echo "" >> CombinedModlet/Config/Localization.txt
    cat "$moddir/Config/Localization.txt" >> CombinedModlet/Config/Localization.txt
  fi
  # Handle Files named "localization.txt"
  if [[ -f $moddir/Config/localization.txt ]]; then
    if [[ ! -f CombinedModlet/Config/Localization.txt ]]; then
      echo "Key,File,Type,UsedInMainMenu,NoTranslate,english,Context / Alternate Text,german,latam,french,italian,japanese,koreana,polish,brazilian,russian,turkish,schinese,tchinese,spanish" > CombinedModlet/Config/Localization.txt
    fi
    echo "" >> CombinedModlet/Config/Localization.txt
    cat "$moddir/Config/localization.txt" >> CombinedModlet/Config/Localization.txt
  fi
  
  ## Find all XML files under the Mod Folder
  find "$moddir/Config" -name *.xml ! -name ModInfo.xml > MODXMLs.txt
  while read xmlfile; do
    BASENAME=`echo "$xmlfile" | cut -d'/' -f3-`
    cat "$xmlfile" | sed -e :a -re 's/<!--.*?-->//g;/<!--/N;//ba' > NOCOMMENTS_XMLFILE
    cat NOCOMMENTS_XMLFILE | awk 'NF' > NOBLANK_XMLFILE; rm -rf NOCOMMENTS_XMLFILE
    
    # Determine the opening and closing tag text
    #ENCLOSINGTAG=`head -1 NOBLANK_XMLFILE | sed 's|<||g' | sed 's|>||g' | tr -d "\r" | tr -d "\n"`
    # Remove opening and closing tags
    #sed -i "s|<$ENCLOSINGTAG>||gI" NOBLANK_XMLFILE
    #sed -i "s|</$ENCLOSINGTAG>||gI" NOBLANK_XMLFILE
    #sed -i "/^ *$/d" NOBLANK_XMLFILE
    #sed -i '/^$/d' NOBLANK_XMLFILE
    #sed -i '/^[[:space:]]*$/d' NOBLANK_XMLFILE
    #sed -e '2,$!d' -e '$d' NOBLANK_XMLFILE > XMLFILE
    cat NOBLANK_XMLFILE | grep '\S' > XMLFILE
    sed -i '1d' XMLFILE
    sed -i '$ d' XMLFILE
    #mv NOBLANK_XMLFILE XMLFILE
    
    echo "$moddir/Config/$BASENAME (tag: $ENCLOSINGTAG)"

    if [[ ! -f CombinedModlet/$BASENAME ]]; then
      echo "<configs>" >> CombinedModlet/$BASENAME
    fi
    echo "<!-- #################################### -->" >> CombinedModlet/$BASENAME
    echo "<!-- START $NAME by $AUTHOR -->" >> CombinedModlet/$BASENAME
    if [[ ! -z $WEBSITE ]]; then echo "<!-- Website: $WEBSITE -->" >> CombinedModlet/$BASENAME; fi
		echo "<!-- Website: $DLURL -->" >> CombinedModlet/$BASENAME
    # INSERT JUST TO XMLFILE WITHOUT OPENING AND CLOSING XML TAGS
    cat XMLFILE | awk 'NF' > NOBLANK_XMLFILE ;
    sed -i "/^ *$/d" NOBLANK_XMLFILE
    cat NOBLANK_XMLFILE >> CombinedModlet/$BASENAME; rm -rf XMLFILE NOBLANK_XMLFILE;    
    echo "<!-- END $NAME by $AUTHOR -->" >> CombinedModlet/$BASENAME
    echo "" >> CombinedModlet/$BASENAME
    echo "" >> CombinedModlet/$BASENAME
  done < MODXMLs.txt; rm -rf MODXMLs.txt
done < Mods.txt; 

# Create README.md
cp ../HEADER.md CombinedModlet/README.md
#sed -i -e '/fox/{r f.html' -e 'd' -e '}' file.txt
sed -i -e '/INSERT/{r CombinedModlet/MODLIST.md' -e 'd}' CombinedModlet/README.md
rm -rf CombinedModlet/MODLIST.md

find "CombinedModlet/Config" -name *.xml > MODXMLs.txt
while read xmlfile; do
  echo "</configs>" >> $xmlfile
done < MODXMLs.txt; rm -rf MODXMLs.txt



mv CombinedModlet 7DTD-Neopolitan
zip -r $(date +%Y-%d-%m_%H%M%S)-7DTD-Neopolitan.zip 7DTD-Neopolitan