summon marker 0 2 -2 {Tags:["blue_netherite","notInitialized"]}
execute positioned 0 2 -2 as @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run data modify entity @s Pos set from storage run map.netherite.blue
execute at @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run summon item ~ ~ ~ {Item:{id:"netherite_ingot",Count:1b,tag:{isGameRes:2b,CanDestroy:["#game:breakable"],HideFlags:8}},Tags:["blue_netherite"],Glowing:1b,Invulnerable:1b}

execute at @e[tag=blue_netherite,tag=notInitialized,limit=1,sort=nearest,type=marker] run summon item_display ~ ~0.4 ~ {item:{id:"netherite_ingot",Count:1b},item_display:"ground",Glowing:1b,billboard:"center",glow_color_override:255,view_range:1.5f,Tags:["netherite_glow"]}

kill @e[tag=blue_netherite,tag=notInitialized,type=marker]