scoreboard objectives add calculator dummy
scoreboard objectives add UI dummy
scoreboard objectives add Data dummy
scoreboard objectives add genericCD dummy
scoreboard objectives add Sidebar dummy
scoreboard objectives setdisplay sidebar Sidebar
scoreboard objectives add Death deathCount
scoreboard objectives add Options dummy
scoreboard objectives add SubUI dummy
scoreboard objectives add sword dummy
scoreboard objectives add axe dummy
scoreboard objectives add crossbow dummy
scoreboard objectives add pickaxe dummy
scoreboard objectives add armor dummy
scoreboard objectives add hpPotionCD dummy
scoreboard objectives add Payment dummy
scoreboard objectives add red dummy
scoreboard objectives add blue dummy
scoreboard objectives add deathSourceCD dummy
scoreboard objectives add revive_cooldown dummy
scoreboard objectives add carrot_stick used:carrot_on_a_stick
scoreboard objectives add warped_stick used:warped_fungus_on_a_stick
scoreboard objectives add join_game trigger


# numbers
scoreboard players set #100 calculator 100
scoreboard players set #22 calculator 22
scoreboard players set #10 calculator 10
scoreboard players set #8 calculator 8
scoreboard players set #2 calculator 2
scoreboard players set #-1 calculator -1
# numbers

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
bossbar set map:load max 10
bossbar set map:load style notched_10
bossbar set map:load visible false
# bossbar


function game:shop/load
function game:plugin/sidebar

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
#define tag need_team
#define tag red_spawn
#define tag blue_spawn
#define tag crystal_targeted
#define tag vand_altar
#define tag vand_altar_red
#define tag vand_altar_blue
#define tag altar_red
#define tag altar_blue
#define tag map_notation
#define tag intelligent_name
#define tag altar_red_shop
#define tag altar_blue_shop
#define tag altar_mark.red
#define tag altar_mark.blue
#define storage game:shop
#define storage game:red_shop
#define storage game:blue_shop
#define storage game:hint
#define storage game:announcement
#define storage map:data
#define storage run

#define score_holder score
#define score_holder TargetScore
#define score_holder MaxGameLength
#define score_holder GameLength
#define score_holder oreCoolDown
#define score_holder oreCoolDownBase
#define score_holder #holder
#define score_holder #loop_20
#define score_holder #loop_3
#define score_holder #random
#define score_holder #currentMap
#define score_holder #mapID
#define score_holder #startPend
#define score_holder ore_ticker
#define score_holder beemCD
#define score_holder beemLevel
#define score_holder stored_netherite
#define score_holder reviveCooldown The cooldown for a player to revive
#define score_holder crystal_count How many calues are there
#define score_holder dirtCD The time counting for dirt
#define score_holder dirtTime The time limit for dirt
#define score_holder metalWorkLevel The Technology of metal producing of a team
#define score_holder magicLabLevel The Technology of Magic of a team
#define score_holder supplyBuckupLevel The Technology of Backup Resources
#define score_holder alchemyLevel The Technology of Alchemy of a team
#define score_holder poisonFireLevel The Technoloy of Posioning and Fire
#define score_holder BarracksLevel The Technology of Barracks
#define score_holder sharpness Ench Sharpness
#define score_holder sweep Ench Sweep
#define score_holder fire_aspect Ench Fire Aspect
#define score_holder efficiency Ehch Efficiency
#define score_holder proj_protection Ehch Projectile Protection
#define score_holder blast_protection Ehch Blast Protection
#define score_holder power Ehch Blast Power
#define score_holder lobby_state

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
tellraw Dahesor {"text":"Initialize","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/function game:shop/initialize"}}

# >altar marks
#define tag altar_mark.red.thunder
#define tag altar_mark.blue.thunder
#define tag v.red.thunder
#define tag v.blue.thunder
#define tag altar_mark.red.bats
#define tag altar_mark.blue.bats
# >