scoreboard players set game Data 1
kill @e[tag=map_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
kill @e[type=marker,tag=ore_marker]
kill @e[type=marker,tag=pigman_item]
kill @e[tag=repair,type=marker]
kill @e[type=villager,tag=villager_marker]
kill @e[type=marker,tag=villager_marker]

#reset scores
scoreboard players set @a surrender 0
scoreboard players set GameLength Data 0
scoreboard players set crazyMode Data 0
scoreboard players set destroyMode Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
scoreboard players set @a armor 2
scoreboard players set @a pickaxe 1
scoreboard players set @a deathSourceCD 0
scoreboard players set @a revive_cooldown -30
scoreboard players set @a harvest_level 0
scoreboard players set @a leave_game 0
scoreboard players set @a convertCount 0
scoreboard players set @a convertEnergy 0
scoreboard players set @a convertItem 0
scoreboard players set @a regenPotionUHC 5
scoreboard players set onSpeedyEffect red 0
scoreboard players set onSpeedyEffect blue 0
scoreboard players set sharpness red 0
scoreboard players set sharpness blue 0
scoreboard players set sweep red 0
scoreboard players set sweep blue 0
scoreboard players set efficiency red 2
scoreboard players set efficiency blue 2
scoreboard players set blast_protection red 0
scoreboard players set blast_protection blue 0
scoreboard players set proj_protection red 0
scoreboard players set proj_protection blue 0
scoreboard players set power red 0
scoreboard players set power blue 0
scoreboard players set magic_occult red 0
scoreboard players set magic_occult blue 0
scoreboard players set science_techno red 0
scoreboard players set science_techno blue 0
scoreboard players set society_populate red 0
scoreboard players set society_populate blue 0
scoreboard players set no_nausea red 0
scoreboard players set no_nausea blue 0
scoreboard players set surrender red -1
scoreboard players set surrender blue -1
scoreboard players set score red 0
scoreboard players set score blue 0
scoreboard players set beemCD red 360
scoreboard players set beemCD blue 360
scoreboard players set beemLevel red 1
scoreboard players set beemLevel blue 1
scoreboard players set stored_netherite red 0
scoreboard players set stored_netherite blue 0
scoreboard players set dirtTime red 40
scoreboard players set dirtTime blue 40
scoreboard players set crystal_count red 2
scoreboard players set crystal_count blue 2
scoreboard players set absoprtionCooldown red 30
scoreboard players set absoprtionCooldown blue 30
scoreboard players set additional_shop red 0
scoreboard players set additional_shop blue 0
scoreboard players set creeperStorm red 0
scoreboard players set creeperStorm blue 0
scoreboard players set pigmanSlaves red 0
scoreboard players set pigmanSlaves blue 0
scoreboard players set oreAdd red 1
scoreboard players set oreAdd blue 1
scoreboard players set techNetherite red 1
scoreboard players set techNetherite blue 1
scoreboard players add gameID Data 1
scoreboard players operation #half_score Data = TargetScore Options
scoreboard players operation #half_score Data /= #2 calculator
scoreboard players operation #close_score Data = TargetScore Options
scoreboard players operation #close_score Data -= killScore Options
scoreboard players set villagerTimer Data 2400
function game:run/dirt/mutiplier
#set spawn points
summon marker 4 4 4 {Tags:["red_spawn"]}
data modify entity @e[type=marker,tag=red_spawn,limit=1] Pos set from storage run map.spawn.red
summon marker 4 4 4 {Tags:["blue_spawn"]}
data modify entity @e[type=marker,tag=blue_spawn,limit=1] Pos set from storage run map.spawn.blue

data merge storage run {over_half:{red:0b,blue:0b},almost_win:{red:0b,blue:0b},first_kill:0b}

#set map specific tick and load commands
fill 0 0 0 0 0 2 air
setblock 0 0 0 command_block{Command:""}
execute if data storage run map.loadCommand run data modify block 0 0 0 Command set from storage run map.loadCommand
setblock 0 0 2 repeating_command_block{Command:""}
execute if data storage run map.tickCommand run data modify block 0 0 2 Command set from storage run map.tickCommand
setblock 0 0 1 redstone_block

#place enderchest
function game:shop/load


# place crystals
summon marker 0 3 0 {Invulnerable:1b,Tags:["red_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=red_crystal] Pos set from storage run map.crystalPos.red[0]
execute at @e[type=marker,tag=red_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["red_crystal"]}
kill @e[type=marker,tag=red_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["red_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=red_crystal] Pos set from storage run map.crystalPos.red[1]
execute at @e[type=marker,tag=red_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["red_crystal"]}
kill @e[type=marker,tag=red_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["blue_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=blue_crystal] Pos set from storage run map.crystalPos.blue[0]
execute at @e[type=marker,tag=blue_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["blue_crystal"]}
kill @e[type=marker,tag=blue_crystal]

summon marker 0 3 0 {Invulnerable:1b,Tags:["blue_crystal"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=blue_crystal] Pos set from storage run map.crystalPos.blue[1]
execute at @e[type=marker,tag=blue_crystal] run summon end_crystal ~ ~ ~ {ShowBottom:0b,Invulnerable:1b,Tags:["blue_crystal"]}
kill @e[type=marker,tag=blue_crystal]
team join red @e[type=end_crystal,tag=red_crystal]
team join blue @e[type=end_crystal,tag=blue_crystal]
# place crystals

# Place vand
function game:shop/vand

# set ore Cooldown
scoreboard players operation oreCoolDown calculator = oreCoolDownBase Options
execute store result score #player calculator run execute if entity @a[team=!]
execute if score #player calculator matches 3..4 run scoreboard players operation oreCoolDown calculator *= #3 calculator
execute if score #player calculator matches 3..4 run scoreboard players operation oreCoolDown calculator /= #4 calculator
execute if score #player calculator matches 5..6 run scoreboard players operation oreCoolDown calculator *= #2 calculator
execute if score #player calculator matches 5..6 run scoreboard players operation oreCoolDown calculator /= #3 calculator
execute if score #player calculator matches 7..8 run scoreboard players operation oreCoolDown calculator *= #7 calculator
execute if score #player calculator matches 7..8 run scoreboard players operation oreCoolDown calculator /= #12 calculator
execute if score #player calculator matches 9.. run scoreboard players operation oreCoolDown calculator /= #2 calculator
scoreboard players operation oreCoolDown red = oreCoolDown calculator
scoreboard players operation oreCoolDown blue = oreCoolDown calculator
# set ore Cooldown

function game:shop/initialize
function game:run/dirt/start_up

tag @a add canBuyTotem
tag @a remove returning


clear @a
scoreboard players set @a UI 1
execute as @a run function game:plugin/clear_enderchest
execute as @a run function ui:foolproof/redirect
execute as @a run loot replace entity @s weapon.offhand loot game:player/crossbow
gamemode adventure @a
effect give @a hero_of_the_village 30 0 false

function game:topbar/refresh
bossbar set top:single name {"text": "Start!","color": "yellow"}
bossbar set top:single color white

execute if score debug Data matches 1 run tellraw @a {"text": "Debug On","color": "red","bold": true}

execute if score dataCollection Data matches 1 run data modify storage developer:data MobArrow append value {GameID:-1,data:[]}
execute if score dataCollection Data matches 1 run execute store result storage developer:data MobArrow[-1].GameID int 1 run scoreboard players get gameID Data

execute if score dataCollection Data matches 1 run data modify storage developer:data General append value {GameID:-1,data:[]}
execute if score dataCollection Data matches 1 run execute store result storage developer:data General[-1].GameID int 1 run scoreboard players get gameID Data

execute if score showPlayerHealth Options matches 1 run scoreboard objectives setdisplay list health
execute unless score showPlayerHealth Options matches 1 run scoreboard objectives setdisplay list

execute if score realisticOreDrop Options matches 0 run function game:utility/realistic_ore/create_scoreboards
data modify storage actionbar_mixer:json text append value {id:"crossbow",content:'{"nbt":"Inventory[{id:\\"minecraft:crossbow\\"}].tag.ChargedProjectiles[0].tag.display.Name","entity": "@s","interpret": true}'}

execute if score GameMode Data matches 1 run function game:run/gamemodes/uhc/initialize
execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/initialize

function game:plugin/pigman/start
execute as @a run function game:player/upgradeables/renew
function game:run/magage_gamemodes
function #game:start
function game:run/netherite/villager/shuffle
tp @a[tag=spectator] 0 137 0
gamemode spectator @a[tag=spectator]
team leave @a[tag=spectator]
clear @a[tag=spectator]
execute as @a run attribute @s generic.attack_speed base set 4.3
