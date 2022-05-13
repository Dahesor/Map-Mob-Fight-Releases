kill @e[tag=map_notation]
kill @e[type=armor_stand,tag=shop_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
execute at @e[type=marker,tag=ore_marker] run setblock ~ ~ ~ stone
kill @e[type=marker,tag=ore_marker]
kill @e[type=marker,tag=altar_red]
kill @e[type=marker,tag=altar_blue]
kill @e[type=armor_stand,tag=altar_red_shop]
kill @e[type=armor_stand,tag=altar_blue_shop]
kill @e[type=armor_stand,tag=altar_mark.red]
kill @e[type=armor_stand,tag=altar_mark.blue]
kill @e[type=zombie,tag=vand_altar]
clear @a
execute as @a run function ui:null
scoreboard players set game Data 0
scoreboard players set GameLength Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
scoreboard players set @a pickaxe 1
scoreboard players set sharpness red 0
scoreboard players set sharpness blue 0
scoreboard players set sweep red 0
scoreboard players set sweep blue 0
scoreboard players set efficiency red 0
scoreboard players set efficiency blue 0
scoreboard players set blast_protection red 0
scoreboard players set blast_protection blue 0
scoreboard players set proj_protection red 0
scoreboard players set proj_protection blue 0
scoreboard players set power red 0
scoreboard players set power blue 0
scoreboard players set alchemyLevel red 0
scoreboard players set alchemyLevel blue 0
scoreboard players set BarracksLevel red 0
scoreboard players set BarracksLevel blue 0
scoreboard players set magicLabLevel red 0
scoreboard players set magicLabLevel blue 0
scoreboard players set metalWorkLevel red 0
scoreboard players set metalWorkLevel blue 0
scoreboard players set supplyBuckupLevel red 0
scoreboard players set supplyBuckupLevel blue 0
scoreboard players set poisonFireLevel red 0
scoreboard players set poisonFireLevel blue 0
scoreboard players set score red 0
scoreboard players set score blue 0
scoreboard players set beemCD red 264
scoreboard players set beemCD blue 264
scoreboard players set beemLevel red 1
scoreboard players set beemLevel blue 1
scoreboard players set stored_netherite red 0
scoreboard players set stored_netherite blue 0
scoreboard players set dirtTime red 40
scoreboard players set dirtTime blue 40
scoreboard players set crystal_count red 2
scoreboard players set crystal_count blue 2
fill 0 0 0 0 0 2 air
team leave @a[tag=team_randomed]
tag @a remove team_randomed
tag @a remove canBuyTotem
bossbar set top:single visible false