give @s tipped_arrow{CustomPotionColor:7570948}
give @s oak_sign{BlockEntityTag:{is_waxed:1b,front_text:{messages:['{"translate":"切换地图","color": "green","clickEvent": {"action": "run_command","value": "/function lobby:map_selection/loop"}}','{"nbt":"map.displayName","storage": "run","interpret": true}','','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}}
tellraw @a [{"translate":"dirt","with":[{"score":{"name": "#dirt","objective": "calculator"},"color": "red","italic": false}]},{"translate":"hint.still_need","with":[{"score":{"name": "#difference","objective": "calculator"},"color": "red"}]}]
summon text_display ~ ~ ~ {text:'{"text":"0","color": "#c0e0eb"}',billboard:"fixed",brightness:{block:15,sky:15},transformation:{scale:[10f,10f,10f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},background:0}
execute as @e[type=text_display,tag=d] run data merge entity @s {background:2718922}
#{front_text:{messages:['""','""','""','""']}}

summon block_display ~-0.5 ~-0.5 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.1","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0f,0.0038f,2.4993f,0.0602f,1.0f,-1.8001f,-0.0390f,1.7344f,0.0f,0.0f,0.0f,0.0f,1.0f]}]}
summon block_display ~-0.5 ~-1.2 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.2","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0f,0.0038f,2.4993f,0.0602f,1.0f,-1.8001f,-0.0390f,1.7344f,0.0f,0.0f,0.0f,0.0f,1.0f]}]}


summon villager ~ ~ ~ {Invulnerable:1b,CustomName:'"dsads"',CustomNameVisible:1b,NoAI:1b}

scoreboard objectives add death deathCount
#add new scoreboard, increase by 1 when a player dies

give @s crossbow{}
summon block_display ~ ~ ~ {block_state:{Name:"netherite_block",Properties:{}},transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f],Tags:["test"],start_interpolation:100,interpolation_duration:80}
execute as @e[type=block_display,tag=test] run data merge entity @s {transformation:{translation:[-4f,0f,0f]}}
summon item_display ~-0.5 ~-0.5 ~-0.5 {item:{id:"warped_fungus_on_a_stick",Count:1,tag:{CustomModelData:11}},Tags:["mine"],transformation:[1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f,0f,0f,0f,0f,1f]}

setblock ~ ~ ~ cherry_sign{front_text:{messages:['{"text":"\\ue010      ","color":"white"}','""','{"text":"  \\ue015  =  %","color":"white"}','""']}}