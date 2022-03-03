kill @e[tag=map_notation]
kill @e[type=armor_stand,tag=shop_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
kill @e[type=marker,tag=ore_marker]
scoreboard players set game Data 0
scoreboard players set GameLength Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
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
scoreboard players set poisonBoilLevel red 0
scoreboard players set poisonBoilLevel blue 0
scoreboard players set fireEssenceLevel red 0
scoreboard players set fireEssenceLevel blue 0
scoreboard players set score red 0
scoreboard players set score blue 0
fill 0 0 0 0 0 2 air
team leave @a[tag=team_randomed]
tag @a remove team_randomed