#!/bin/bash
. ../../download_mods.func.sh
#. ../download_mods.func.sh
#. download_mods.func.sh


# 1 - Alloc's Server Fixes
wget_download http://illy.bz/fi/7dtd/server_fixes.tar.gz server_fixes.tar.gz extract_file
# 2 - Webmap
wget_download "https://raw.githubusercontent.com/Prisma501/Allocs-Webmap-for-CPM/master/map.js" map.js && \
mv $MODCOUNT/map.js 1/Mods/Allocs_WebAndMapRendering/webserver/js/
# 3 - Botman
wget_download "https://botman.nz/Botman_Mod_A20.zip" Botman.zip extract_file # Botman

# 4 - ServerTools
wget_download "https://github.com/dmustanger/7dtd-ServerTools/releases/download/20.0.41/7dtd-ServerTools-20.0.41.zip" ServerTools.zip extract_file # ServerTools

# 5 - CSM Patrons Mod
wget_download https://github.com/Prisma501/CSMM-Patrons-Mod/releases/download/A20.0-v20.6/CPM_20.6.zip CPM.zip extract_file

# 6 - Server Rules Modlet
git_clone https://github.com/XelaNull/7DTD-SanitysEdgeRules.git

# 2 - Bad Company Manager
#dropbox_download http://www.jffgaming.com/resources/bad-company-manager-mod.13/download BCManager.zip extract_file

echo $MODCOUNT > ../../MODCOUNT.txt;
