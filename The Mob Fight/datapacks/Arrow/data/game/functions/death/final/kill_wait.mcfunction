execute if entity @a[tag=final_camera] at @e[type=marker,limit=1,tag=final_camera] run summon zombie ~ ~ ~ {Tags:["final_camera"]}
item replace entity @e[type=zombie,limit=1,tag=final_camera] armor.chest from entity @a[limit=1,tag=final_camera] armor.chest
item replace entity @e[type=zombie,limit=1,tag=final_camera] armor.legs from entity @a[limit=1,tag=final_camera] armor.legs
item replace entity @e[type=zombie,limit=1,tag=final_camera] armor.feet from entity @a[limit=1,tag=final_camera] armor.feet
execute as @a[tag=final_camera,limit=1] run loot replace entity @e[type=zombie,limit=1,tag=final_camera] armor.head loot game:head_self
kill @e[tag=final_camera,type=zombie]
gamemode spectator @a[tag=final_camera]
effect clear @a[tag=final_camera]
kill @e[type=villager,tag=final_camera]
tag @a[tag=final_camera] remove final_camera