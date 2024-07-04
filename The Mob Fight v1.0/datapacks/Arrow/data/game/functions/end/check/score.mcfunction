execute if score GameMode Data matches 4 run return fail

execute if score score red >= TargetScore Options unless score score blue >= TargetScore Options run function game:end/red_win
execute if score score blue >= TargetScore Options unless score score red >= TargetScore Options run function game:end/blue_win
execute if score score red >= TargetScore Options if score score blue >= TargetScore Options run function game:end/draw_check