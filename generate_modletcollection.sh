#!/bin/bash
. ../../download_mods.func.sh

# WhiteRiver Tools of Citizenship Quest Pack
#   A large listing of various quests to provide different tools, weapons, vehicles, and armor
git_clone https://github.com/XelaNull/7DTD-WhiteRiver_ToC.git 

# Shouden Kalferas's Fixed Modlets Pack
#   Craft Acid (Allows crafting of Bottles of Acid)
#   Faster Crafting (Speeds up some crafting times)
#   Meat Rendering (Allows crafting of Animal Fat from Diseased Meat)
#   Quenchiest Cactus Juice (Obtain murky water from Cactuses)
#   Sewing Kit (Allows crafting of sewing kits)
#   Steel Trussing Sheet (Adds back the steel trussing sheet with 7000 durability)
#   Claymore's Stainless Steel Returns (Adds back stainless steel blocks & polish)
#   Home Depot (Adds countless decorative items and wireless electricity blocks)
#   Super Corn Cooked Foods (Adds foods crafted from super corn)
#   Terrain Based Movement Speed (Run faster on cement, slower in the dirt)
#   Xal's Zombies Attach Animals (Zombies attack animals)
git_clone https://github.com/XelaNull/7dtd-FixedModlets.git
rm -rf $MODCOUNT/7dtd-FixedModlets/7DTD-LuckyLooterBeGone

# Delmod's Modlets
#   Delmod Stack Sizes (Increases how large certain items can be stacked)
#   All other modlets removed
git_clone https://github.com/DelStryker/Delmod.git #Delmod Modlets
rm -rf $MODCOUNT/Delmod/ModInfo.xml $MODCOUNT/Delmod/Delmod*Stack_Sizes $MODCOUNT/Delmod/Delmod*Combiner $MODCOUNT/Delmod/Delmod_Pack_And_Store $MODCOUNT/Delmod/Delmod_Decorations $MODCOUNT/Delmod/Delmod_Kitchen $MODCOUNT/Delmod/Delmod_Double_Door $MODCOUNT/Delmod/Delmod_Electronics $MODCOUNT/Delmod/Delmod_Tools $MODCOUNT/Delmod/Delmod_Recipes* $MODCOUNT/Delmod/Delmod_Archetypes $MODCOUNT/Delmod/Delmod_Startup*

# Shouden Kalferas's Zombie Lootbag Increase
#   Slightly increases the frequency that lootbags show up, and 
#   causes the lootbags to stick around for ~15 minutes
git_clone https://github.com/XelaNull/7DTD-ZombieLootbag_Increase.git

# Shouden Kalferas's 60slot Bag, Faster Bellows, and Increase Headshot Damage
#   60slot Bag - Provides a 60-slot bag with 30-reserved to "earn"
#   Faster Bellows - Smelt items faster in your forge
#   Increased Headshot Damage - Slightly increases the damage when making headshots
git_clone https://github.com/XelaNull/7DTD-Bag_Bellows_Headshot.git
rm -rf $MODCOUNT/7DTD-Bag_Bellows_Headshot/Headshot_25

# Shouden Kalferas's Magazine_Plants_Trader
#   Magazine Skillpoints (Removed) - Adds 1 skillpoint for each shematic or skillbook
#   Pickup Plants - Allows you to press E to pickup plants (not compatible with living off the land)
#   Trader Refresh - Sets the Trader Refresh to be 1 Day
git_clone https://github.com/XelaNull/7DTD-Magazine_Plants_Trader.git
rm -rf $MODCOUNT/7DTD-Magazine_Plants_Trader/Magazine_Schematics_Skillpoint

# Delmod's Combiner
#   Allows you to use a workbench to combine two same items for better quality item
git_clone https://github.com/XelaNull/7DTD-Combiner.git

# Shouden Kalferas's Salvaged Electronics
#   Battery Bank - Wrench apart a POI/prefab battery bank to obtain a usable battery bank
#   Generator Bank - Wrench apart a POI/prefab generator bank and obtain a usable generator bank
#   Lights - Wrench apart POI/prefab lights and obtain placeable versions of those lights that require electricity
#   Parts - Wrench apart various electrical parts to obtain placeable versions of those items
#   Signs - Wrench apart electrical signs that are lit up to obtain placeable versions of those items
#   Solar Bank - Wrench apart a POI/prefab Solar Bank and obtain a usable solar bank with change of obtaining solar cells
git_clone https://github.com/XelaNull/7DTD-SalvagedElectronics.git

# Shouden Kalferas's Zombiepedia Skillpoints
git_clone https://github.com/XelaNull/7DTD-Zombiepedia_Skillpoints.git

# Shouden Kalferas's Skillbook Skillpoints
git_clone https://github.com/XelaNull/7DTD-Skillbook_Skillpoints
rm -rf $MODCOUNT/7DTD-Skillbook-Skillpoints/All* $MODCOUNT/7DTD-Skillbook-Skillpoints/Most* 

# Dough Phunghus's Punishing Weather
#   Go higher up on a mountain and it gets colder
#   Deserts are hotter
#   Slightly more bad weather that fluctuates the temperature more
git_clone "https://github.com/doughphunghus/Doughs-PunishingWeather-Core.git"
git_clone "https://github.com/doughphunghus/Doughs-PunishingWeather-Effects-Medium"

# Donovan's Modlets
#   Better Cement - Adjust the recipe for making cement so it is more realistic
#   Better Dyes - Allow dyes to be craftable from paint
#   Craft Spikes - Adds the Log Spikes back as craftable item
#   Loot Cleanup - Destroys trash and birds nests after you loot them.
#   Pick Me Up - Allows spikes to be picked up
git_clone "https://github.com/Donovan522/donovan-7d2d-modlets.git"
rm -rf $MODCOUNT/donovan-7d2d-modlets/donovan-bigbackpack $MODCOUNT/donovan-7d2d-modlets/donovan-a* $MODCOUNT/donovan-7d2d-modlets/donovan-betterb*
rm -rf $MODCOUNT/donovan-7d2d-modlets/donovan-betterp* $MODCOUNT/donovan-7d2d-modlets/donovan-betters* $MODCOUNT/donovan-7d2d-modlets/donovan-betterv* 
rm -rf $MODCOUNT/donovan-7d2d-modlets/donovan-crafta* $MODCOUNT/donovan-7d2d-modlets/donovan-craftb* $MODCOUNT/donovan-7d2d-modlets/donovan-craftj* 
rm -rf $MODCOUNT/donovan-7d2d-modlets/donovan-craftsc* $MODCOUNT/donovan-7d2d-modlets/donovan-le* $MODCOUNT/donovan-7d2d-modlets/donovan-long* 
rm -rf $MODCOUNT/donovan-7d2d-modlets/donovan-m* $MODCOUNT/donovan-7d2d-modlets/donovan-n* $MODCOUNT/donovan-7d2d-modlets/donovan-u*

# WTK34's Grenade Arrows
git_clone https://github.com/wtk34Mods/wtk34Mods_grenade_arrow.git

# Jax Teller's - Eggs In Fridges
svn_checkout "https://github.com/JaxTeller718/JaxModletsA182B5/trunk/JaxTeller718_EggsInFridges"
# Jax Teller's - Bigger Random Wandering Hordes
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_BiggerWanderingHordes"
# Jax Teller's - Increase Zombie Sight Range (they detect you sooner)
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_ZombieSightRange"

# Guppycur's Zombie Getter Upper - Randomizes how long knocked down Zombies take to get up
wget_download "https://gitlab.com/guppycur/guppymods/-/archive/master/guppymods-master.zip?path=Guppycur%27s_Random_ZombieGetterUpper" guppymods-master.zip extract_file

# Doughphunghus's Various Pipe Bombs
git_clone https://github.com/doughphunghus/Doughs-Buff-PipeBombs

# Adds Ghillie Suit, Frobscottle, DrPrepper, NakedGator, etc
git_clone "https://github.com/stamplesmods/7d2dmodlets"

# Khelldon's Bigger Buck and Doe
git_clone https://github.com/doughphunghus/7d2dModlets
rm -rf $MODCOUNT/7d2dModlets/Khelldon*Aww* $MODCOUNT/7d2dModlets/Khelldon*Baby* $MODCOUNT/7d2dModlets/Khelldon*Bad* $MODCOUNT/7d2dModlets/Khelldon*Chicken* $MODCOUNT/7d2dModlets/Khelldon*Complex* $MODCOUNT/7d2dModlets/Khelldon*Custom* $MODCOUNT/7d2dModlets/Khelldon*Framed* $MODCOUNT/7d2dModlets/Khelldon*Herp* $MODCOUNT/7d2dModlets/Khelldon*Greener* $MODCOUNT/7d2dModlets/Khelldon*Horny* $MODCOUNT/7d2dModlets/Khelldon*Nailed* $MODCOUNT/7d2dModlets/Khelldon*Piggy* $MODCOUNT/7d2dModlets/Khelldon*Grenade* $MODCOUNT/7d2dModlets/Khelldon*Rebar* $MODCOUNT/7d2dModlets/Khelldon*Screamer* $MODCOUNT/7d2dModlets/Khelldon*Starter* $MODCOUNT/7d2dModlets/Khelldon*Gullivers* $MODCOUNT/7d2dModlets/Khelldon*Benched* $MODCOUNT/7d2dModlets/zzz*

#   Rile's Fixes (Adds countless server fixes back to the game)
gdrive_download 1q1MdS4kRRu94S22KXcDqfiiZbXW4ZTZs RilesFixes.zip extract_file
#   Rile's HUDPlus (Adds a custom UI)
gdrive_download 1KbjFknPKK6HWF8-ZmGW8bxTNzuRECACz RilesHUDPlus.zip extract_file
#   Rile's Seating Plus (Sets the Jeep and Motorcycle to be multi-seat compatible)
gdrive_download 1jHXXJWzyirKZfhw9CS0yTagPKYITCWUz RilesSeatingPlus.zip extract_file

# Khaine's Zombie Stutter (Preloads Zombies into RAM to reduce Stutter)
wget_download "https://gitlab.com/KhaineGB/khaines-modlets-a19/-/archive/master/khaines-modlets-a19-master.zip?path=KHA19-ZombieStutterStop" Khaines-ZombieStutter.zip extract_file

# Vanilla Expanded Storage Options
git_clone https://github.com/TSBX-7D/VanillaExpanded-Storage/

#https://github.com/arramus/Pet-Animals-and-Guards-A19-2021Jan01
