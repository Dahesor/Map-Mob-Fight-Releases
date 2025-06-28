return run function lobby:spectator/sidebar/pages/log

scoreboard players operation $switch calculator = GameLength Data
scoreboard players operation $switch calculator %= #400 calculator
execute if score $switch calculator matches ..200 run return run function lobby:spectator/sidebar/pages/log
execute unless score $switch calculator matches ..200 run function lobby:spectator/sidebar/pages/eco