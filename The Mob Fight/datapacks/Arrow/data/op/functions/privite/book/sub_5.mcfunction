playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players remove MaxGameLength Options 6000
execute if score MaxGameLength Options matches ..18000 run scoreboard players set MaxGameLength Options 18000
function lobby:signs/items/settings