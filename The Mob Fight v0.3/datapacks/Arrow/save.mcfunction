give @s tipped_arrow{CustomPotionColor:13224393}
give @s oak_sign{BlockEntityTag:{is_waxed:1b,front_text:{messages:['{"translate":"切换地图","color": "green","clickEvent": {"action": "run_command","value": "/function lobby:map_selection/loop"}}','{"nbt":"map.displayName","storage": "run","interpret": true}','','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}}
tellraw @a [{"translate":"dirt","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","with":[{"score":{"name": "#difference","objective": "calculator"},"color": "red"}]}]
summon text_display ~ ~ ~ {text:'{"text":"0","color": "#c0e0eb"}',billboard:"fixed",brightness:{block:15,sky:15},transformation:{scale:[10f,10f,10f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},background:0}
execute as @e[type=text_display,tag=d] run data merge entity @s {background:0}
#{front_text:{messages:['""','""','""','""']}}

summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.1","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0000f,0.0038f,2.4993f,0.0602f,1.0000f,-1.8001f,-0.0390f,1.7344f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}
summon block_display ~-0.5 ~-1.2 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.2","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0000f,0.0038f,2.4993f,0.0602f,1.0000f,-1.8001f,-0.0390f,1.7344f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f]}]}




scoreboard objectives add death deathCount
#add new scoreboard, increase by 1 when a player dies

#tick: run following in tick:
execute as @a[scores={death=1..}] run scoreboard players remove @s your_scoreboard 1
# if death is 1, then this player just died
execute as @a[scores={death=1..}] run scoreboard players remove @s death 1
# if death is 1, then this player just died