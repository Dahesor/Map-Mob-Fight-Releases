title @a times 0 30 0
title @a[predicate=!map:on_wait] title {"translate":"title.new_game_launched","color": "green"}
title @a[predicate=!map:on_wait] subtitle {"translate":"message.jump_to_join","color": "gold"}
execute as @a[predicate=!map:on_wait] if score @s join_game matches 1.. run tp @s @e[tag=lobby_spinner,limit=1,sort=nearest]
scoreboard players set @a join_game 0
scoreboard players enable @a join_game
setblock 0 137 -8 air
setblock 0 137 -8 oak_wall_sign[facing=south]{Text2:'{"translate":"leave_prepared","color": "red","clickEvent": {"action": "run_command","value": "/tp @s 0.50 58.5 110.5"}}',Text4:'[{"text": "[","color": "gray"},{"keybind":"key.use"},"]"]'}
title @a[predicate=map:on_wait] clear
execute if entity @a[predicate=!map:on_wait] if score #startPend calculator matches ..12 run execute as @a at @s run playsound arrow:event.game_waiting master @s ~ ~ ~ 1 1.1 1
execute if entity @a[predicate=!map:on_wait] run scoreboard players set #startPend calculator 13
execute unless entity @a[predicate=!map:on_wait] run scoreboard players remove #startPend calculator 1
execute if score #startPend calculator matches ..12 run function lobby:start_game/start/main