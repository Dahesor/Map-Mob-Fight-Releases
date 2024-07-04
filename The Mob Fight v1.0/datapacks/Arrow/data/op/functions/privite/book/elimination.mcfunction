scoreboard players set GameMode Data 4
playsound ui.button.click master @a ~ ~ ~

execute if score GameMode Data matches 0 run setblock 5 57 95 amethyst_block
execute if score GameMode Data matches 1 run setblock 5 57 95 crimson_hyphae
execute if score GameMode Data matches 2 run setblock 5 57 95 polished_basalt
execute if score GameMode Data matches 3 run setblock 5 57 95 emerald_block
execute if score GameMode Data matches 4 run setblock 5 57 95 crying_obsidian

function lobby:gamemode_rules