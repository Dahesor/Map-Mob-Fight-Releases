function lobby:signs/specialize
execute if score game Data matches 0 run effect give @a saturation 10 10 true
execute if score game Data matches 0 run effect give @a resistance 10 10 true
execute if score game Data matches 0 run effect give @a instant_health 1 10 true
execute if score lobby_state Data matches 2 run function lobby:start_game/pending
execute at @e[type=armor_stand,tag=red_p_centerA,limit=1] run particle dust 0.8 0.059 0.059 1 ~ ~ ~ 1.6 1.6 1.6 10 10 normal
execute at @e[type=armor_stand,tag=blue_p_centerA,limit=1] run particle dust 0.059 0.133 0.8 1 ~ ~ ~ 1.6 1.6 1.6 10 10 normal
execute at @e[type=armor_stand,tag=random_p_centerA,limit=1] run particle dust 0.769 0.769 0.769 1 ~ ~ ~ 1.6 1.6 1.6 10 10 normal
