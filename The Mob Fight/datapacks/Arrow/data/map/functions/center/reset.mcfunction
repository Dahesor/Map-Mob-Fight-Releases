scoreboard objectives remove map.CENTER.falling_distance
scoreboard players reset center%dirt_switch
scoreboard players reset center%isolation
scoreboard players reset center%outer_glass
scoreboard players reset center%side_door
scoreboard players reset center%window_closed
kill @e[type=block_display,tag=center.blue_gate]
kill @e[type=block_display,tag=center.red_gate]
kill @e[type=block_display,tag=center.gate_new]
tag @a remove center.killed_by_dripstone