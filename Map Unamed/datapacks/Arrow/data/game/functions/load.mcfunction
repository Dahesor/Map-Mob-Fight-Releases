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
scoreboard objectives add carrot_stick used:carrot_on_a_stick


# numbers
scoreboard players set #100 calculator 100
scoreboard players set #22 calculator 22
scoreboard players set #10 calculator 10
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

function game:shop/load
function game:plugin/sidebar

#define tag actived
#define tag ticking
#define tag second_ticking
#define tag lobby_spinner
#define tag ore_marker
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
#define score_holder ore_ticker
#define score_holder dirtCD The time counting for dirt
#define score_holder dirtTime The time limit for dirt
#define score_holder metalWorkLevel The Technology of metal producing of a team
#define score_holder magicLabLevel The Technology of Magic of a team
#define score_holder supplyBuckupLevel The Technology of Backup Resources
#define score_holder alchemyLevel The Technology of Alchemy of a team
#define score_holder poisonBoilLevel The Technoloy of Posioning
#define score_holder BarracksLevel The Technology of Barracks
#define score_holder fireEssenceLevel Teh Technology about the usage of fire
#define score_holder sharpness Ench Sharpness
#define score_holder sweep Ench Sweep
#define score_holder fire_aspect Ench Fire Aspect

#define objective particleCreator
#define score_holder particleType
#define score_holder particleDistance
#define function particle_creat:enter

#alias vector lobby_spinner 0 57.5 85
#alias vector preview_structure_Pos -8 48 77

tellraw Dahesor {"text":"Initialize","color": "aqua","underlined": true,"clickEvent": {"action": "run_command","value": "/function game:shop/initialize"}}

