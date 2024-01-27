execute if data storage run over_half{red:0b} if score score red >= #half_score Data run function game:utility/over_half/warn_blue
execute if data storage run over_half{blue:0b} if score score blue >= #half_score Data run function game:utility/over_half/warn_red
execute if data storage run almost_win{red:0b} if score score red >= #close_score Data run function game:utility/over_half/blue_losing
execute if data storage run almost_win{blue:0b} if score score blue >= #close_score Data run function game:utility/over_half/red_losing