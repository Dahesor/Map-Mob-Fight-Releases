execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.settings_locked","color": "red"}
execute if score AdminSettingsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminSettingsOn Options matches 1.. run return fail

playsound ui.button.click master @a ~ ~ ~
execute store result score #diffi calculator run difficulty
execute if score #diffi calculator matches 1 run difficulty normal
execute if score #diffi calculator matches 2 run difficulty hard
execute if score #diffi calculator matches 3 run difficulty easy
execute unless score #diffi calculator matches 1..3 run difficulty easy
function lobby:signs/items/settings