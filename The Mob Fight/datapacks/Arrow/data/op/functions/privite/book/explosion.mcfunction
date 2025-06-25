playsound ui.button.click master @a ~ ~ ~
execute unless score creeperGriefing Options matches 0..1 run scoreboard players set creeperGriefing Options 0
scoreboard players set #tempS calculator 1
scoreboard players operation #tempS calculator -= creeperGriefing Options
scoreboard players operation creeperGriefing Options = #tempS calculator
function lobby:signs/items/settings