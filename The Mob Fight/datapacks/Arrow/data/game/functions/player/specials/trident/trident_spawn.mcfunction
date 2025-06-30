data modify storage run pos set from entity @s Pos
execute store result score #x calculator run data get storage run pos[0] 1000
execute store result score #y calculator run data get storage run pos[1] 1000
execute store result score #z calculator run data get storage run pos[2] 1000

scoreboard players operation #x calculator %= #1000 calculator
scoreboard players operation #y calculator %= #1000 calculator
scoreboard players operation #z calculator %= #1000 calculator

function game:player/specials/trident/summon_display

effect give @a[distance=..7,gamemode=adventure] absorption 8 1 true
playsound minecraft:item.trident.thunder master @a ~ ~ ~ 0.8 1.8

execute if entity @a[distance=..7,gamemode=adventure] at @a[distance=..7,gamemode=adventure] on origin run scoreboard players add @s scb.support 50

kill