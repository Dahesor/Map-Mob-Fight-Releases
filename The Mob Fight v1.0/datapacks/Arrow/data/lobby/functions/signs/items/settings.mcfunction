setblock 5 60 70 air
setblock 5 60 70 oak_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['{"translate":"settings.mob_difficulty","color": "gold"}','""','{"translate":"cycle","clickEvent": {"action": "run_command","value": "/function lobby:settings/difficulty"}}','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
execute store result score #diffi calculator run difficulty
execute if score #diffi calculator matches 1 run data modify block 5 60 70 front_text.messages[1] set value '{"translate":"d.1"}'
execute if score #diffi calculator matches 2 run data modify block 5 60 70 front_text.messages[1] set value '{"translate":"d.2"}'
execute if score #diffi calculator matches 3 run data modify block 5 60 70 front_text.messages[1] set value '{"translate":"d.3"}'
execute unless score #diffi calculator matches 1..3 run difficulty easy


#setblock 5 60 72 air
#setblock 5 60 72 oak_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['{"translate":"settings.explode_destroy.1","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/crepper_griefing"}}','{"translate":"settings.explode_destroy.2","color": "gold"}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
#execute if score creeperGriefing Options matches 1 run data modify block 5 60 72 front_text.messages[2] set value '{"translate":"settings.status.on"}'
#execute unless score creeperGriefing Options matches 1 run data modify block 5 60 72 front_text.messages[2] set value '{"translate":"settings.status.off"}'

setblock 5 60 72 air
setblock 5 60 72 oak_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['{"translate":"settings.performance.1","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/performance"}}','{"translate":"settings.performance.2","color": "gold"}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
execute if score Performance Options matches 1 run data modify block 5 60 72 front_text.messages[2] set value '{"translate":"settings.status.on"}'
execute unless score Performance Options matches 1 run data modify block 5 60 72 front_text.messages[2] set value '{"translate":"settings.status.off"}'


fill 5 59 69 5 59 75 air
setblock 5 59 70 acacia_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['{"translate":"settings.game_length.1","color": "gold"}','{"translate":"settings.game_length.2","color": "gold"}','""','""']}}
setblock 5 59 69 bamboo_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['""','{"translate":"sim.-5min","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/sub_5"}}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
setblock 5 59 71 bamboo_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['""','{"translate":"sim.+5min","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/add_5"}}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}

scoreboard players operation %t calculator = MaxGameLength Options
scoreboard players operation %t calculator /= #1200 calculator
data modify block 5 59 70 front_text.messages[2] set value '{"translate":"word.minute","with":[{"score":{"name": "%t","objective": "calculator"},"color":"aqua"}],"color":"aqua"}'

setblock 5 59 74 acacia_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['{"translate":"settings.target.1","color": "gold"}','{"translate":"settings.game_length.2","color": "gold"}','""','""']}}
setblock 5 59 73 bamboo_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['""','{"text":"− 100","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/sub_100"}}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}
setblock 5 59 75 bamboo_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['""','{"translate":"+ 100","color": "gold","clickEvent": {"action": "run_command","value": "/function lobby:settings/add_100"}}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}

data modify block 5 59 74 front_text.messages[2] set value '{"score":{"name": "TargetScore","objective": "Options"},"color":"aqua"}'


setblock 5 60 74 air
setblock 5 60 74 oak_wall_sign[facing=west]{is_waxed:0b,front_text:{messages:['""','{"translate":"settings.default","color": "red","clickEvent": {"action": "run_command","value": "/function lobby:settings/reset"}}','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}