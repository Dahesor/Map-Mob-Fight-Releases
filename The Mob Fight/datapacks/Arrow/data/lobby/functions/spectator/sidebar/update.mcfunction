scoreboard players operation $switch calculator = GameLength Data
scoreboard players operation $switch calculator %= #400 calculator
execute if score $switch calculator matches ..200 run function lobby:spectator/sidebar/pages/log
execute unless score $switch calculator matches ..200 run function lobby:spectator/sidebar/pages/eco

execute unless score $switch calculator matches ..200 if entity @a[team=spec_log] run function lobby:spectator/sidebar/pages/log
execute if score $switch calculator matches ..200 if entity @a[team=spec_eco] run function lobby:spectator/sidebar/pages/eco