scoreboard players add #idTemp calculator 1
summon armor_stand ^ ^ ^1.8 {Marker:1b,Invisible:1b,Tags:["uninitialized","_vand"]}
data modify entity @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] Tags append from entity @s Tags[0]
scoreboard players operation @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] genericCD = #bringin calculator
scoreboard players operation @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] calculator = #idTemp calculator
execute at @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] run tp @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] ~ ~ ~ facing entity @s feet
execute as @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] at @s run tp @s ~ ~ ~ ~90 ~

tag @e[type=armor_stand,tag=uninitialized,tag=_vand,limit=1,distance=..5] remove uninitialized