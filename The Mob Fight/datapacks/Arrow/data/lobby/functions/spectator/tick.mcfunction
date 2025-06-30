function lobby:spectator/menu_checker
scoreboard players enable @s spec
execute if score @s spec matches 1.. run function lobby:spectator/switch/now