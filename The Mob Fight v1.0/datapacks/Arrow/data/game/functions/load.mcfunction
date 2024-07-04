scoreboard objectives add calculator dummy
scoreboard objectives add UI dummy
scoreboard objectives add Data dummy
scoreboard objectives add genericCD dummy
scoreboard objectives add Death deathCount
scoreboard objectives add Options dummy
scoreboard objectives add SubUI dummy
scoreboard objectives add sword dummy
scoreboard objectives add crossbow dummy
scoreboard objectives add pickaxe dummy
scoreboard objectives add armor dummy
scoreboard objectives add hpPotionCD dummy
scoreboard objectives add Payment dummy
scoreboard objectives add red dummy
scoreboard objectives add blue dummy
scoreboard objectives add mobDEF dummy
scoreboard objectives add lastGame dummy
scoreboard objectives add deathSourceCD dummy
scoreboard objectives add SETTING.villager dummy
scoreboard objectives add revive_cooldown dummy
scoreboard objectives add carrot_stick used:carrot_on_a_stick
scoreboard objectives add warped_stick used:warped_fungus_on_a_stick
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add join_game trigger
scoreboard objectives add harvest_level dummy
scoreboard objectives add health health
scoreboard objectives add belowName dummy ""
scoreboard objectives add convertEnergy dummy
scoreboard objectives add convertItem dummy
scoreboard objectives add convertCount dummy
scoreboard objectives add regenPotionUHC dummy
scoreboard objectives add surrender dummy
scoreboard objectives add bossbar dummy
scoreboard objectives add match dummy
scoreboard objectives setdisplay below_name belowName
scoreboard objectives modify belowName displayname ""
# numbers
scoreboard players set #10000 calculator 10000
scoreboard players set #6000 calculator 6000
scoreboard players set #1800 calculator 1800
scoreboard players set #1200 calculator 1200
scoreboard players set #1000 calculator 1000
scoreboard players set #100 calculator 100
scoreboard players set #41 calculator 41
scoreboard players set #40 calculator 40
scoreboard players set #35 calculator 35
scoreboard players set #30 calculator 30
scoreboard players set #25 calculator 25
scoreboard players set #22 calculator 22
scoreboard players set #20 calculator 20
scoreboard players set #10 calculator 10
scoreboard players set #12 calculator 12
scoreboard players set #16 calculator 16
scoreboard players set #8 calculator 8
scoreboard players set #7 calculator 7
scoreboard players set #5 calculator 5
scoreboard players set #4 calculator 4
scoreboard players set #3 calculator 3
scoreboard players set #2 calculator 2
scoreboard players set #1 calculator 1
scoreboard players set #-1 calculator -1
# numbers

function game:version

# team
team add red {"color": "red","text": "Red"}
team add blue {"color": "blue","text": "Blue"}
team modify red friendlyFire false
team modify blue friendlyFire false
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
# team

# bossbar
bossbar add top:single ""
bossbar set top:single players @a
bossbar add map:load ""
bossbar set map:load players @a
bossbar set map:load max 14
bossbar set map:load style notched_10
bossbar set map:load visible false
# bossbar

#function game:plugin/sidebar

#define tag actived
#define tag ticking
#define tag second_ticking
#define tag lobby_spinner
#define tag ore_marker
#define tag spawnCenterR
#define tag inactivedSpawnCenterR
#define tag initialSpawn
#define tag dataDoneSpawn
#define tag spawnPosChecker
#define tag invVehicle
#define tag invOnVehicle
#define tag acceptedPassenger
#define tag needPassenger
#define tag shop_notation
#define tag red_crystal
#define tag blue_crystal
#define tag sidebar_entity
#define tag team_randomed
#define tag mine
#define tag need_team
#define tag red_spawn
#define tag blue_spawn
#define tag crystal_targeted
#define tag map_notation
#define tag intelligent_name
#define tag pigman_item
#define tag mob_resolved
#define tag uninitialized
#define tag player_ticking
#define tag excluded
#define tag mobDEFini
#define tag villager_red
#define tag villager_blue
#define tag villager_marker
#define tag spectator
#define tag del
#define tag temp.Damage
#define tag in_beacon_effect
#define tag crossed_mid
#define tag temp.FakeDamage
#define tag blindness
#define storage game:shop
#define storage game:red_shop
#define storage game:blue_shop
#define storage game:hint
#define storage game:announcement
#define storage game:netherite_shop
#define storage map:data
#define storage developer:data
#define storage run
#define storage version
#define storage actionbar_mixer:json
#define storage lobby:data

#define score_holder #x
#define score_holder #y
#define score_holder #z
#define score_holder #dx
#define score_holder #dy
#define score_holder #dz
#define score_holder #rx
#define score_holder #ry
#define score_holder #rz
#define score_holder #bossbar
#define score_holder dataCollection
#define score_holder score
#define score_holder GameLength
#define score_holder oreCoolDown
#define score_holder #holder
#define score_holder #loop_20
#define score_holder #loop_3
#define score_holder #loop_10
#define score_holder #random
#define score_holder #currentMap
#define score_holder #mapID
#define score_holder #startPend
#define score_holder ore_ticker
#define score_holder beemCD
#define score_holder beemLevel
#define score_holder stored_netherite
#define score_holder crazyMode
#define score_holder gameID
#define score_holder oreAdd
#define score_holder vandFeeType
#define score_holder techNetherite
#define score_holder creeperStorm
#define score_holder #half_score
#define score_holder #close_score
#define score_holder #temp
#define score_holder villagerTimer
#define score_holder showWarning
#define score_holder VILLAGER.super
#define score_holder #twoThird
#define score_holder VILLAGER.super_villager
#define score_holder final_camera
#define score_holder onSpeedyEffect If this team is under the speedy effect
#define score_holder destroyMode How players mine ores and dirts
#define score_holder crystal_count How many calues are there
#define score_holder dirtCD The time counting for dirt
#define score_holder dirtTime The time limit for dirt
#define score_holder The Technology of Barracks
#define score_holder sharpness Ench Sharpness
#define score_holder sweep Ench Sweep
#define score_holder fire_aspect Ench Fire Aspect
#define score_holder efficiency Ehch Efficiency
#define score_holder proj_protection Ehch Projectile Protection
#define score_holder blast_protection Ehch Blast Protection
#define score_holder power Ehch Blast Power
#define score_holder absoprtionCooldown The Cooldown time for absorption Buff
#define score_holder GameMode gamemode
#define score_holder no_nausea
#define score_holder lobby_state
#define score_holder magic_occult
#define score_holder science_techno
#define score_holder society_populate
#define score_holder additional_shop
#define score_holder pigmanSlaves

#define objective particleCreator
#define score_holder particleType The command run on each endpoint. Use #particle_creat:particle
#define score_holder particleDistance Scale: 10. Radius of the circle.
#define function particle_creat:enter
#define function dtm:calculate_motion_custom
#define function dtm:calculate_motion
#define tag DTMdestination

#alias vector lobby_spinner 0 57.5 85
#alias vector preview_structure_Pos -8 48 77
#alias vector Lobby_Center 0.50 58.5 110.5
#tellraw Dahesor {"text":"Initialize","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/function game:shop/initialize"}}

# >altar marks
#define tag altar_red
#define tag altar_blue
#define tag red_vand
#define tag blue_vand
#define tag red_vand.child
#define tag blue_vand.child
#define tag _vand
#define tag altar.busy
data modify storage game:netherite_shop red.icons set value [{id:"gold_ingot",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:11}},{id:"arrow",tag:{}},{id:"redstone",tag:{}},{id:"redstone_torch",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:1}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:6}},{id:"spectral_arrow",tag:{CustomModelData:10}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:4}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:3}},{id:"feather",tag:{}},{id:"book",tag:{}},{id:"bone",tag:{}},{id:"leather",tag:{}},{id:"iron_pickaxe",tag:{}},{id:"brick",tag:{}},{id:"iron_ingot",tag:{}},{id:"diamond",tag:{}},{id:"netherite_ingot",tag:{}},{id:"diamond_shovel",tag:{Enchantments:[{}]}},{id:"tipped_arrow",tag:{CustomModelData:707}},{id:"tipped_arrow",tag:{CustomModelData:402}}]
data modify storage game:netherite_shop blue.icons set value [{id:"gold_ingot",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:11}},{id:"arrow",tag:{}},{id:"redstone",tag:{}},{id:"redstone_torch",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:1}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:6}},{id:"spectral_arrow",tag:{CustomModelData:10}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:4}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:3}},{id:"feather",tag:{}},{id:"book",tag:{}},{id:"bone",tag:{}},{id:"leather",tag:{}},{id:"iron_pickaxe",tag:{}},{id:"brick",tag:{}},{id:"iron_ingot",tag:{}},{id:"diamond",tag:{}},{id:"netherite_ingot",tag:{}},{id:"diamond_shovel",tag:{Enchantments:[{}]}},{id:"tipped_arrow",tag:{CustomModelData:707}},{id:"tipped_arrow",tag:{CustomModelData:402}}]
data modify storage game:netherite_shop red.icons[] merge value {Count:1b}
data modify storage game:netherite_shop blue.icons[] merge value {Count:1b}
# >