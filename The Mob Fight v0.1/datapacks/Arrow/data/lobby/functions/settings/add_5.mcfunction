playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players add MaxGameLength Options 6000
execute if score MaxGameLength Options matches 72001.. run scoreboard players set MaxGameLength Options 72000
function lobby:signs/items/settings