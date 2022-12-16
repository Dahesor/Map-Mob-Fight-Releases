setblock 14 59 101 air
setblock 14 59 101 oak_wall_sign[facing=west]{Text1:'{"translate":"settings.mob_difficulty","color": "gold"}',Text2:'',Text3:'{"translate":"cycle","clickEvent": {"action": "run_command","value": "/function lobby:settings/difficulty"}}',Text4:'[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]'}
execute store result score #diffi calculator run difficulty
execute if score #diffi calculator matches 1 run data merge block 14 59 101 {Text2:'{"translate":"d.1"}'}
execute if score #diffi calculator matches 2 run data merge block 14 59 101 {Text2:'{"translate":"d.2"}'}
execute if score #diffi calculator matches 3 run data merge block 14 59 101 {Text2:'{"translate":"d.3"}'}
execute unless score #diffi calculator matches 1..3 run difficulty easy