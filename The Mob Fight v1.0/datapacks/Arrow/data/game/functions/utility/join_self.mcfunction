scoreboard players set @s surrender 0
scoreboard players set @s Death 0
scoreboard players set @s sword 1
scoreboard players set @s crossbow 1
scoreboard players set @s armor 2
scoreboard players set @s pickaxe 1
scoreboard players set @s deathSourceCD 0
scoreboard players set @s revive_cooldown -30
scoreboard players set @s harvest_level 0
scoreboard players set @s leave_game 0
scoreboard players set @s convertCount 0
scoreboard players set @s convertEnergy 0
scoreboard players set @s convertItem 0
scoreboard players set @s regenPotionUHC 5
scoreboard players operation @s lastGame = gameID Data

tag @s add canBuyTotem
tag @s remove returning


clear @s
scoreboard players set @s UI 1
execute as @s run function game:plugin/clear_enderchest
execute as @s run function ui:foolproof/redirect
execute as @s run loot replace entity @s weapon.offhand loot game:player/crossbow
gamemode adventure @s
effect give @s hero_of_the_village 30 0 false
execute as @a run function game:player/upgradeables/renew

execute as @a run attribute @s generic.attack_speed base set 4.3
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 0.8 0.75

execute as @a at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
execute if entity @s[team=red] run tellraw @a {"translate":"info.joined_mid","color": "green","with": [{"selector": "@s","color": "yellow"},{"translate": "team.red","color": "red"}]}
execute if entity @s[team=blue] run tellraw @a {"translate":"info.joined_mid","color": "green","with": [{"selector": "@s","color": "yellow"},{"translate": "team.blue","color": "aqua"}]}
tellraw @a "======================="
execute if score GameMode Data matches 0 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.0","color":"green"}," : "]
execute if score GameMode Data matches 1 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.1","color":"gold"}," : "]
execute if score GameMode Data matches 2 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.2","color":"aqua"}," : "]
execute if score GameMode Data matches 3 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.3","color":"light_purple"}," : "]
execute if score GameMode Data matches 4 run tellraw @a [{"translate":"chat.head.game"}," ",{"translate":"gamemode.4","color":"red"}," : "]
function lobby:start_game/start/self_pack