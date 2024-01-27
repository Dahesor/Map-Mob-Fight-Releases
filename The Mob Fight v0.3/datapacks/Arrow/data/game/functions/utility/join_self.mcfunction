scoreboard players set @s surrender 0
scoreboard players set @s Death 0
scoreboard players set @s sword 1
scoreboard players set @s axe 1
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

