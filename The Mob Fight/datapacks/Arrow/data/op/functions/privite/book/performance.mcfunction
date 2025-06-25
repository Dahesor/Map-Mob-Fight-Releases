playsound ui.button.click master @a ~ ~ ~
execute unless score Performance Options matches 0..1 run scoreboard players set Performance Options 0
scoreboard players set #tempS calculator 1
scoreboard players operation #tempS calculator -= Performance Options
scoreboard players operation Performance Options = #tempS calculator
function lobby:signs/items/settings