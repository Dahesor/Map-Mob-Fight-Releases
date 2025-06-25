#>game:end/time_check
#@private
#define score_holder #tee$time

scoreboard players operation #tee$time calculator = MaxGameLength Options
scoreboard players operation #tee$time calculator -= GameLength Data
execute if score #tee$time calculator matches 6000 run function game:end/5_min
execute if score #tee$time calculator = CrazyMode Options if score CrazyMode Options matches 1.. run function game:run/crazy/start
execute if score crazyMode Data matches 1.. run function game:run/crazy/ticked
execute if score #tee$time calculator matches 1200 run function game:end/count_down/60s
execute if score #tee$time calculator matches 600 run function game:end/count_down/30s
execute if score #tee$time calculator matches ..-60 run function game:end/draw_check

scoreboard players operation #tee$time calculator = MaxGameLength Options
scoreboard players operation #tee$time calculator /= #2 calculator
execute if score #tee$time calculator = GameLength Data run function game:run/mid

scoreboard players operation #tee$time calculator = GameLength Data
scoreboard players operation #tee$time calculator %= #1800 calculator
execute if score #tee$time calculator matches 10 run function game:shop/netherite/fee/random
