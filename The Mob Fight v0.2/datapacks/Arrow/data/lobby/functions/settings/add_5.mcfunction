execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.settings_locked","color": "red"}
execute if score AdminSettingsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminSettingsOn Options matches 1.. run return fail
playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players add MaxGameLength Options 6000
execute if score MaxGameLength Options matches 72001.. run scoreboard players set MaxGameLength Options 72000
function lobby:signs/items/settings