title @a times 0 30 0
title @a[predicate=!map:on_wait] title {"translate":"title.new_game_launched","color": "green"}
title @a[predicate=!map:on_wait,tag=!spectator] subtitle {"translate":"message.jump_to_join","color": "gold"}
execute as @a[predicate=!map:on_wait,tag=!spectator] if score @s join_game matches 1.. run tp @s @e[tag=lobby_spinner,limit=1,sort=nearest]
scoreboard players set @a join_game 0
scoreboard players enable @a[tag=!spectator] join_game
setblock 0 137 -8 air
execute unless score #direct_start calculator matches 1.. run setblock 0 137 -8 oak_wall_sign[facing=south]{front_text:{messages:['""','{"translate":"leave_prepared","color": "red","clickEvent": {"action": "run_command","value": "/tp @s 0.50 58.5 110.5"}}','""','[{"text": "[","color": "gray"},{"keybind":"key.use"},"]"]']}}
title @a[predicate=map:on_wait] clear
execute if entity @a[predicate=!map:on_wait,tag=!spectator] if score #startPend calculator matches ..7 run execute as @a at @s run playsound arrow:event.game_waiting master @s ~ ~ ~ 0.4 1.0 0.4
execute if entity @a[predicate=!map:on_wait,tag=!spectator] run scoreboard players set #startPend calculator 8
execute unless entity @a[predicate=!map:on_wait,tag=!spectator] run scoreboard players remove #startPend calculator 1
execute unless entity @a[predicate=map:on_wait,tag=!spectator] if score #cancel calculator matches 1.. run function lobby:start_game/cancel
execute if entity @a[predicate=map:on_wait,tag=!spectator] run scoreboard players set #cancel calculator 1
execute if score #startPend calculator matches ..7 run function lobby:start_game/start/main
