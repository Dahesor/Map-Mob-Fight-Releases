execute if score center%dirt_switch red matches 0.. run return run data modify block 46 42 -15 front_text.messages[1] set value '""'


scoreboard players operation !sec calculator = center%dirt_switch red
scoreboard players operation !sec calculator *= #-1 calculator
scoreboard players remove !sec calculator 1
scoreboard players operation !sec calculator /= #20 calculator
scoreboard players add !sec calculator 1
data modify block 46 42 -15 front_text.messages[1] set value '{"translate":"info.cd","with":[{"score":{"name": "!sec","objective": "calculator"},"color":"white"}]}'