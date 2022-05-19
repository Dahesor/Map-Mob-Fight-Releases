scoreboard players operation #tee$time calculator = MaxGameLength Options
scoreboard players operation #tee$time calculator -= GameLength Data
execute if score #tee$time calculator matches 6000 run function game:end/5_min
execute if score #tee$time calculator matches 1200 run function game:end/count_down/60s
execute if score #tee$time calculator matches 600 run function game:end/count_down/30s
execute if score #tee$time calculator matches ..-60 run function game:end/draw_check