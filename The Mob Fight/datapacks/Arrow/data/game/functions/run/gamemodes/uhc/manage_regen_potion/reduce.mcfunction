scoreboard players remove @s regenPotionUHC 1
tellraw @s [{"text": "[!] ","color": "red"},{"translate":"regenpotion.left","with":[{"score":{"name": "@s","objective": "regenPotionUHC"},"color": "aqua"}]}]
execute if score @s regenPotionUHC matches ..-1 run schedule function game:run/gamemodes/uhc/manage_regen_potion/clear 1t