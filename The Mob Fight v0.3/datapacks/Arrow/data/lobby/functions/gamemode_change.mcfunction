execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.settings_locked","color": "red"}
execute if score AdminSettingsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminSettingsOn Options matches 1.. run return fail

playsound ui.button.click master @a ~ ~ ~
scoreboard players add GameMode Data 1
execute if score GameMode Data matches 3.. run scoreboard players set GameMode Data 0
function lobby:lobby_spinner/diamond

execute if score GameMode Data matches 0 run setblock 5 57 95 amethyst_block
execute if score GameMode Data matches 1 run setblock 5 57 95 crimson_hyphae
execute if score GameMode Data matches 2 run setblock 5 57 95 polished_basalt

execute if score GameMode Data matches 2 run time set midnight
execute unless score GameMode Data matches 2 run time set 13000
execute if score GameMode Data matches 2 run weather thunder
execute unless score GameMode Data matches 2 run weather clear


schedule function lobby:gamemode_rules 30t