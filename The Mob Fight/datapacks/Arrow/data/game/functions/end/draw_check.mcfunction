execute if score score red = score blue run function game:end/draw
execute if score score red > score blue run function game:end/red_win
execute if score score red < score blue run function game:end/blue_win