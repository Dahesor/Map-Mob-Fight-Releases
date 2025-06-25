execute if score GameLength Data matches ..3600 if score #loop_20 calculator matches 15 run function game:topbar/refresh
execute if score GameLength Data matches 3600 run function game:topbar/single_splited/calculate
execute if score GameLength Data matches ..3590 run function game:run/gamemodes/elimination/pre_game

execute if score #loop_20 calculator matches 3 as @a[tag=eliminated,gamemode=spectator,predicate=!game:places/in_gaming_area] run tp @s 1.36 69.91 0.62
function game:run/gamemodes/elimination/dead/player_check

scoreboard players add playerCountScore Data 1
execute if score playerCountScore Data matches 3000.. run function game:run/gamemodes/elimination/add_score

execute if score player red matches ..0 unless score player blue matches ..0 run function game:end/blue_win
execute if score player blue matches ..0 unless score player red matches ..0 run function game:end/red_win
execute if score player red matches ..0 if score player blue matches ..0 run function game:end/draw
