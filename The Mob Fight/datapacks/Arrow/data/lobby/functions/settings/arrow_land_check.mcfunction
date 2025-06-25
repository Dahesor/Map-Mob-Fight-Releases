execute if score AdminSettingsOn Options matches 1.. run tellraw @s {"translate":"op.settings_locked","color": "red"}
execute if score AdminSettingsOn Options matches 1.. at @s run playsound entity.enderman.teleport master @a ~ ~ ~ 1 1.5 1
execute if score AdminSettingsOn Options matches 1.. run return fail

playsound ui.button.click master @a ~ ~ ~
execute unless score doArrowLandPosCheck Options matches 0..1 run scoreboard players set doArrowLandPosCheck Options 0
scoreboard players set #tempS calculator 1
scoreboard players operation #tempS calculator -= doArrowLandPosCheck Options
scoreboard players operation doArrowLandPosCheck Options = #tempS calculator
function lobby:signs/items/settings