summon marker 0 2 -2 {Tags:["blue_netherite","notInitialized"]}
execute positioned 0 2 -2 as @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run data modify entity @s Pos set from storage run map.netherite.blue
execute at @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run summon item ~ ~ ~ {Item:{id:"netherite_ingot",Count:1b,tag:{isGameRes:2b}},Tags:["blue_netherite"],Glowing:1b}
kill @e[tag=blue_netherite,tag=notInitialized,type=marker]
