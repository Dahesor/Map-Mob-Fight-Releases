scoreboard players set GameMode Data 0
playsound ui.button.click master @a ~ ~ ~

execute if score GameMode Data matches 0 run setblock 5 57 95 amethyst_block
execute if score GameMode Data matches 1 run setblock 5 57 95 crimson_hyphae
execute if score GameMode Data matches 2 run setblock 5 57 95 polished_basalt

execute if score GameMode Data matches 2 run time set midnight
execute unless score GameMode Data matches 2 run time set 13000
execute if score GameMode Data matches 2 run weather thunder
execute unless score GameMode Data matches 2 run weather clear


function lobby:gamemode_rules