fill 38 65 -3 38 65 1 minecraft:red_wall_banner[facing=west]{Patterns:[{Pattern:"cre",Color:15}]}
fill -38 65 2 -38 65 -2 minecraft:blue_wall_banner[facing=east]{Patterns:[{Pattern:"cre",Color:0}]}
fill 39 45 6 39 46 6 oak_wall_sign[facing=north]{Text2:'"<--"'}
fill -39 45 -7 -39 46 -7 oak_wall_sign[facing=south]{Text2:'"<--"'}
setblock 41 66 5 oak_wall_sign[facing=west,waterlogged=false]{Text2:'"-->"'}
setblock 40 66 5 oak_wall_sign[facing=east,waterlogged=false]{Text2:'"<--"'}
setblock -41 66 -6 oak_wall_sign[facing=east,waterlogged=false]{Text2:'"-->"'}
setblock -40 66 -6 oak_wall_sign[facing=west,waterlogged=false]{Text2:'"<--"'}
setblock 37 46 5 air[]{}
setblock 37 46 5 oak_wall_sign[facing=north]{Text1:'{"translate":"使用水电梯","color": "gold","italic": false,"clickEvent": {"action": "run_command","value": "/function map:stone_land/water_red"}}',Text2:'{"translate":"持续20秒","color": "green","italic": false}',Text3:'{"translate":"dirt","with":["§a5"]}',Text4:'[{"text": "[","color": "gray","italic": false},{"keybind":"key.use"},"]"]'}
setblock -37 46 -6 air[]{}
setblock -37 46 -6 oak_wall_sign[facing=south]{Text1:'{"translate":"使用水电梯","color": "gold","italic": false,"clickEvent": {"action": "run_command","value": "/function map:stone_land/water_blue"}}',Text2:'{"translate":"持续20秒","color": "green","italic": false}',Text3:'{"translate":"dirt","with":["§a5"]}',Text4:'[{"text": "[","color": "gray","italic": false},{"keybind":"key.use"},"]"]'}