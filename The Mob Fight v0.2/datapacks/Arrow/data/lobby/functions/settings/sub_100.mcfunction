execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.settings_locked","color": "red"}
execute if score AdminSettingsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminSettingsOn Options matches 1.. run return fail

playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players remove TargetScore Options 100
execute if score TargetScore Options matches ..300 run scoreboard players set TargetScore Options 300
function lobby:signs/items/settings