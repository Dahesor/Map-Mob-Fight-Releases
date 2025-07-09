scoreboard players set $HPleft red 0
scoreboard players set $HPleft blue 0
execute as @e[type=villager,tag=villager_marker] run function game:run/gamemodes/villager/death_score/count_hp_villager
scoreboard players operation $HPleft.d red = $HPleft red
scoreboard players operation $HPleft.d blue = $HPleft blue
scoreboard players operation $HPleft.d red %= #10 calculator
scoreboard players operation $HPleft.d blue %= #10 calculator
scoreboard players operation $HPleft red /= #10 calculator
scoreboard players operation $HPleft blue /= #10 calculator