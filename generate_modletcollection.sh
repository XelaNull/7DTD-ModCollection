#!/bin/bash
. ../../download_mods.func.sh

# Shouden Kalferas's Modlets
#   WhiteRiver Tools of Citizenship Quest Pack
#     A large listing of various quests to provide different tools, weapons, vehicles, and armor
git_clone https://github.com/XelaNull/7DTD-WhiteRiver_ToC.git 
mv $MODCOUNT/7DTD-WhiteRiver_ToC/WhiteRiverToC__REQUIRED $MODCOUNT/7DTD-WhiteRiver_ToC/WhiteRiverToC_AA
#   Zombie Lootbag Increase
#     Slightly increases the frequency that lootbags show up, and causes the lootbags to stick around for ~15 minutes
git_clone https://github.com/XelaNull/7DTD-ZombieLootbag_Increase.git
#   60slot Bag, Faster Bellows, and Increase Headshot Damage
#     60slot Bag - Provides a 60-slot bag with 30-reserved to "earn" (Made from Khaine's 60BBM)
svn_checkout "https://github.com/XelaNull/7DTD-Bag_Bellows_Headshot/trunk/60Slot_Bag_30Reserve"
#     Increased Headshot Damage - Slightly increases the damage when making headshots
svn_checkout "https://github.com/XelaNull/7DTD-Bag_Bellows_Headshot/trunk/Headshot_15"
#   Magazine_Plants_Trader
#     Trader Refresh - Sets the Trader Refresh to be 1 Day
svn_checkout "https://github.com/XelaNull/7DTD-Magazine_Plants_Trader/trunk/Trader_Refresh_1Day"
#     Pickup Plants - Allows you to press E to pickup plants (not compatible with living off the land)
svn_checkout "https://github.com/XelaNull/7DTD-Magazine_Plants_Trader/trunk/Pickup_Plants_A19"
#   Salvaged Electronics
#     Battery Bank - Wrench apart a POI/prefab battery bank to obtain a usable battery bank
#     Generator Bank - Wrench apart a POI/prefab generator bank and obtain a usable generator bank
#     Lights - Wrench apart POI/prefab lights and obtain placeable versions of those lights that require electricity
#     Parts - Wrench apart various electrical parts to obtain placeable versions of those items
#     Signs - Wrench apart electrical signs that are lit up to obtain placeable versions of those items
#     Solar Bank - Wrench apart a POI/prefab Solar Bank and obtain a usable solar bank with change of obtaining solar cells
git_clone https://github.com/XelaNull/7DTD-SalvagedElectronics.git
#   Zombiepedia Skillpoints
git_clone https://github.com/XelaNull/7DTD-Zombiepedia_Skillpoints.git
#   Some Skillbook Skillpoints
svn_checkout "https://github.com/XelaNull/7DTD-Skillbook_Skillpoints/trunk/Some_Skillbooks_Skillpoints"
#   Shouden's Craft Acid (Allows crafting of Bottles of Acid)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-Acid"
#   Meat Rendering (Allows crafting of Animal Fat from Diseased Meat)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-MeatRendering"
#   Quenchiest Cactus Juice (Obtain murky water from Cactuses)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-Quenchiest_Cactus_Juice"
#   Sewing Kit (Allows crafting of sewing kits)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-SewingKit"
#   Steel Trussing Sheet (Adds back the steel trussing sheet with 7000 durability)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-SteelTrussingSheet"
#   Darker Nights & Brighter Lights
git_clone https://github.com/XelaNull/7DTD-DarkerNights_BrighterLights.git
#   Khaine's - 12 Slot Crafting Queue (Modified by Shouden Kalferas for 8 Slots)
svn_checkout "https://github.com/XelaNull/7DTD-ShoudensModlets/trunk/7DTD-8CraftQueue"

# Shouden Kalferas's Fixed Modlets Pack
#   Better Goggles (Slightly Lowered Lucky Looter Value)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/BetterGoggles"
#   Delmod Stack Sizes
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Delmod_Stack_Sizes"
#   Home Depot (Adds countless decorative items and wireless electricity blocks)
#svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Home_Depot"
git_clone https://github.com/XelaNull/HOME_DEPOT_7D2D_MOD.git
#   IceBurg's Baby Animals (Made small animals less deadly)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/IceBurg_Baby_Animals_1_6"
#   IceBurg's Craft Windows
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/IceBurg_Craft_Windows_1_0"
#   Khaine's HP Bars
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/KHA19-HPBars"
#   MeanCloud's Increase Animal Spawn (Slightly Lowered Values, by Shouden Kalferas)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/MeanCloud_IncreasedAnimals"
#   Claymore's Stainless Steel Returns (Adds back stainless steel blocks & polish)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Stainless_Steel_Returns"
#   Super Corn Cooked Foods (Adds foods crafted from super corn)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/SuperCornCookedFoods"
#   Terrain Based Movement Speed (Run faster on cement, slower in the dirt)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Terrain_Based_Movement_Speed"
#   TSBX's Vanilla Expanded Storage Options (Removed UIAtlas Reference & bad windows XML code)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Vanilla_Expanded_Storage"
#   Xal's Zombies Attack Animals (Zombies attack animals)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Xal_SetZombiesAttackAnimals"
#   WTK34's Grenade Arrows, Modified by Shouden Kalferas for Compatibility with White River Tools of Citizenship
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/zWTK34-Grenade_Arrows"
#   DelStryker's Combiner - Allows you to use a workbench to combine two same items for better quality item
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Delmod_Combiner"
# Magejoshplay's Death by Campfire
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/Death_by_Campfire"
# Survager's mod_rework_repair_weapons (Require parts to repair weapons)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/mod_rework_repair_weapons"
# H7SB Storage
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/H7SB_Storage"
# H7SB Seats
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/H7SB_Seats"
# Dr. Prepper (Run Far and Fast)
svn_checkout "https://github.com/XelaNull/7dtd-FixedModlets/trunk/DrPrepper"


# Delmod's Modlets
#   Return of the Jail Door - does not require electricity
svn_checkout "https://github.com/DelStryker/Delmod/trunk/Delmod_Jail_Door"


# Doughphunghus's Modlets
#   Buff Infection
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-Buff-Infection"
#   Add More Pipe Bomb Variety
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-Buff-PipeBombs"
#   Add more Grenade Variety 2020-02
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-Buff-Grenades"
#   Sous Chef of the Apocalypse
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-Food-SousChefOfTheApocalypse"
#   Nerf Flashlights and Player Crafted Lanterns - Harder to craft and find
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-Nerf-FlashlightsAndLanterns"
#   Doughphunghus's Punishing Weather
#     Go higher up on a mountain and it gets colder
#     Deserts are hotter
#     Slightly more bad weather that fluctuates the temperature more
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-PunishingWeather-Core"
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-PunishingWeather-Effects-Light"
#   Add five ingredients option to UI
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-UIAddFiveRecipeIngredients"
#   You’ve Got Mail
svn_checkout "https://github.com/doughphunghus/7D2D-Doughs-Mods-a19/trunk/Doughs-YouveGotMail"


# Donovan's Modlets
#   Better Bridges
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-betterbridges"
#   Better Buffs
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-betterbuffs"
#   Better Dyes - Allow dyes to be craftable from paint
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-betterdyes"
#   Craft Spikes - Adds the Log Spikes back as craftable item
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-craftspikes"
#   Loot Cleanup - Destroys trash and birds nests after you loot them.
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-lootcleanup"
#   Pick Me Up - Allows spikes to be picked up
svn_checkout "https://github.com/Donovan522/donovan-7d2d-modlets/trunk/donovan-pickmeup"


# JaxTeller718's Modlets
#   Eggs In Fridges
svn_checkout "https://github.com/JaxTeller718/JaxModletsA182B5/trunk/JaxTeller718_EggsInFridges"
#   Bigger Random Wandering Hordes
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_BiggerWanderingHordes"
#   Increase Zombie Sight Range (they detect you sooner)
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_ZombieSightRange"
#   Increased Wilderness Zombies
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_IncreasedBiomeZombiesx2"
#   Slower Levelling
svn_checkout "https://github.com/JaxTeller718/A19ModletsJax/trunk/JaxTeller718_SlowerProgression"


# Guppycur's Zombie Getter Upper - Randomizes how long knocked down Zombies take to get up
wget_download "https://gitlab.com/guppycur/guppymods/-/archive/master/guppymods-master.zip?path=Guppycur%27s_Random_ZombieGetterUpper" guppymods-master.zip extract_file


# Stamples Modlets
#   Ghillie Suit as Clothing Mod
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/GhillieSuitAsMods"
#   Frobscottle Drink (Jump Really High)
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/Frobscottle"
#   Emperor Dye - Turns armor invisible
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/EmperorDye"
#   Naked Gator
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/NakedGator"
#   Stamples Defense Trader Quests
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/StamplesDefenseQuests"
#   Snow Biome has more than Lumberjacks
svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/StamplesNotJustLumberjacks"
#   Flying Ghostly Screamer Banshee
# svn_checkout "https://github.com/stamplesmods/7d2dmodlets/trunk/StamplesScreamerBanshee"


# Khelldon's Bigger Buck and Doe
svn_checkout "https://github.com/doughphunghus/7d2dModlets/trunk/Khelldon-BiggerBuckAndDoe"


# Riles Modlets
#   Fixes (Adds countless server fixes back to the game)
gdrive_download 1q1MdS4kRRu94S22KXcDqfiiZbXW4ZTZs RilesFixes.zip extract_file
#   HUDPlus (Adds a custom UI)
gdrive_download 1KbjFknPKK6HWF8-ZmGW8bxTNzuRECACz RilesHUDPlus.zip extract_file
#   Seating Plus (Sets the Jeep and Motorcycle to be multi-seat compatible)
gdrive_download 1jHXXJWzyirKZfhw9CS0yTagPKYITCWUz RilesSeatingPlus.zip extract_file
#   Deco Blocks
gdrive_download 1473BzsoAItbO7hwumOwuJuegZVXKlZU8 RilesDecoBlocks.zip extract_file


# Khaine's Zombie Stutter (Preloads Zombies into RAM to reduce Stutter)
wget_download "https://gitlab.com/KhaineGB/khaines-modlets-a19/-/archive/master/khaines-modlets-a19-master.zip?path=KHA19-ZombieStutterStop" Khaines-ZombieStutter.zip extract_file


# Okamich's Modlets
#   Guns and Tools Sold With Mods
svn_checkout "https://github.com/Okamich/FallOFBabylon-A19/trunk/Fob_Traders"
#   Armor and Cloth Sold With Mods
svn_checkout "https://github.com/Okamich/FallOFBabylon-A19/trunk/FoB_ArmorWithMods"


# wtk34 Water Filter v1.2
git_clone https://github.com/wtk34Mods/wtk34_water_filter


# Eric Beaudoin's More Paint Textures
svn_checkout "https://github.com/Laotseu/7dtdMods/trunk/MorePaintTextures"


# Farm Jeep
# Guard Pets
# Working Chicken Coop
#https://github.com/arramus/Pet-Animals-and-Guards-A19-2021Jan01

# Deep Dark (Alternative Darkness Modlet)
# https://docs.google.com/uc?export=download&id=1_uZRxQG5AWzq_4gZ1zcL5Rx16PLPma7v
# gdrive_download 1_uZRxQG5AWzq_4gZ1zcL5Rx16PLPma7v DeepDark.rar extract_file

# Re-Box Ammo (Probably needs to be recreated as my own)
# https://drive.google.com/file/d/1DJ8Wx4urrOS65pVicYRt84FqDRQVkKIw/view?usp=sharing
# gdrive_download 1DJ8Wx4urrOS65pVicYRt84FqDRQVkKIw ReBoxAmmo.7z extract_file


# More Frequent Injuries (Probably needs adjusted)
# https://docs.google.com/uc?export=download&id=1pgirg2xR24OUpQ-0IyP7qS7NFnHuEcmz
# gdrive_download 1pgirg2xR24OUpQ-0IyP7qS7NFnHuEcmz MoreFrequenctInjuries.zip extract_file

# Alucard's Blessed Metal Mod
# https://drive.google.com/file/d/15PnRd08dDeVNLqcGlYs6mII0zGLDEMO_/view?usp=sharing

# https://7daystodiemods.com/vanilla-plus/
