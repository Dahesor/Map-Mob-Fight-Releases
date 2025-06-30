summon marker 0 2 -2 {Tags:["red_netherite","notInitialized"]}
execute positioned 0 2 -2 as @e[tag=red_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run data modify entity @s Pos set from storage run map.netherite.red

execute at @e[tag=red_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run function game:run/netherite/pile/item

execute at @e[tag=red_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run summon item_display ~ ~1.1 ~ {item:{id:"lapis_lazuli",Count:1b},item_display:"ground",Glowing:1b,billboard:"center",glow_color_override:16734553,view_range:1.5f,Tags:["netherite_glow"]}

kill @e[tag=red_netherite,tag=notInitialized,type=marker]

scoreboard players add dirt red 6
scoreboard players add copper red 3
scoreboard players add iron red 3
scoreboard players add gold red 3
scoreboard players add lapis red 3
scoreboard players add diamond red 3