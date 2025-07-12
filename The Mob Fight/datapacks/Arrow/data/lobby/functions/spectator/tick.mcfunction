function lobby:spectator/menu_checker
scoreboard players enable @s spec
execute if score @s spec matches 99 run return run function lobby:spectator/switch/hide
execute if score @s spec matches 100 run return run function lobby:spectator/switch/all
execute if score @s spec matches 101 run return run function lobby:spectator/switch/log
execute if score @s spec matches 102 run return run function lobby:spectator/switch/eco


execute if score @s spec matches 1.. run function lobby:spectator/switch/now