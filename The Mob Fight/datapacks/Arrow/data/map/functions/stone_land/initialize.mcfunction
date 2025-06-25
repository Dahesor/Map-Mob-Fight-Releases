fill 23 65 0 23 65 -3 minecraft:red_wall_banner[facing=west]{Patterns:[{Pattern:"cre",Color:15}]}
fill -23 65 -1 -23 65 2 minecraft:blue_wall_banner[facing=east]{Patterns:[{Pattern:"cre",Color:0}]}

setblock 41 66 5 oak_wall_sign[facing=west,waterlogged=false]{is_waxed:1b,front_text:{messages:['""','"-->"','""','""']}}
setblock 40 66 5 oak_wall_sign[facing=east,waterlogged=false]{is_waxed:1b,front_text:{messages:['""','"<--"','""','""']}}
setblock -41 66 -6 oak_wall_sign[facing=east,waterlogged=false]{is_waxed:1b,front_text:{messages:['""','"-->"','""','""']}}
setblock -40 66 -6 oak_wall_sign[facing=west,waterlogged=false]{is_waxed:1b,front_text:{messages:['""','"<--"','""','""']}}
setblock 39 48 4 air[]{}
setblock 39 48 4 oak_wall_sign[facing=north]{front_text:{messages:['{"translate":"使用水电梯","color": "gold","italic": false,"clickEvent": {"action": "run_command","value": "/function map:stone_land/water_red"}}','{"translate":"持续20秒","color": "green","italic": false}','{"translate":"dirt","with":["§a5"]}','[{"text": "[","color": "gray","italic": false},{"keybind":"key.use"},"]"]']}}
setblock -39 48 -5 air[]{}
setblock -39 48 -5 oak_wall_sign[facing=south]{front_text:{messages:['{"translate":"使用水电梯","color": "gold","italic": false,"clickEvent": {"action": "run_command","value": "/function map:stone_land/water_blue"}}','{"translate":"持续20秒","color": "green","italic": false}','{"translate":"dirt","with":["§a5"]}','[{"text": "[","color": "gray","italic": false},{"keybind":"key.use"},"]"]']}}

fill 51 66 4 49 66 -6 white_concrete replace white_concrete_powder
fill -51 66 -5 -49 66 5 white_concrete replace white_concrete_powder