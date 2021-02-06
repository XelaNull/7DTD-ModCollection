#!/bin/bash
. ../../download_mods.func.sh

# 1 - Botman Bad Company + Alloc's Server Fixes & WebMap
wget_download "http://botman.nz/Botman_Mods_A19.zip" Allocs_Bad_Company.zip extract_file # Botman
wget_download "https://raw.githubusercontent.com/Prisma501/Allocs-Webmap-for-CPM/master/map.js" map.js && \
mv $MODCOUNT/map.js 1/Mods/Allocs_WebAndMapRendering/webserver/js/

# 2 - Bad Company Manager
dropbox_download http://www.jffgaming.com/resources/bad-company-manager-mod.13/download BCManager.zip extract_file

# 3 - ServerTools
wget_download "https://github.com/dmustanger/7dtd-ServerTools/releases/download/19.3.2/7dtd-ServerTools-19.3.2.zip" ServerTools.zip extract_file # ServerTools

# 4 - CSM Patrons Mod
wget_download https://github.com/Prisma501/CSMM-Patrons-Mod/releases/download/A19.3-v18.6/CPM_18.6.zip CPM.zip extract_file

# 5 - Server Rules Modlet
git_clone https://github.com/XelaNull/7DTD-SanitysEdgeRules.git