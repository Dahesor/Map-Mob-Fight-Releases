summon marker 0 2 -2 {Tags:["blue_netherite","notInitialized"]}
execute positioned 0 2 -2 as @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run data modify entity @s Pos set from storage run map.netherite.blue
execute at @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run function game:run/netherite/pile/item

execute at @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run summon item_display ~ ~1.1 ~ {item:{id:"lapis_lazuli",Count:1b},item_display:"ground",Glowing:1b,billboard:"center",glow_color_override:6184703,view_range:1.5f,Tags:["netherite_glow"]}

kill @e[tag=blue_netherite,tag=notInitialized,type=marker]

scoreboard players add dirt blue 5
scoreboard players add copper blue 3
scoreboard players add iron blue 3
scoreboard players add gold blue 3
scoreboard players add lapis blue 2
scoreboard players add diamond blue 2