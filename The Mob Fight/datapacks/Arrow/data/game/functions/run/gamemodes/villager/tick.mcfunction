execute if score GameLength Data matches ..3600 if score #loop_20 calculator matches 15 run function game:topbar/refresh
execute if score GameLength Data matches 3600 run function game:topbar/single_splited/calculate
execute if score GameLength Data matches 3600 run bossbar set top:single name {"translate":"VILLAGER.hint.start","color":"gold"}
execute if score GameLength Data matches ..3590 run effect give @a resistance 2 10 true

execute if score #loop_20 calculator matches 18 run function game:run/gamemodes/villager/second
execute if score GameLength Data = #twoThird calculator run function game:run/gamemodes/villager/sudden_death/launch
