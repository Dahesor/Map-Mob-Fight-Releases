playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players remove TargetScore Options 100
execute if score TargetScore Options matches ..300 run scoreboard players set TargetScore Options 300
function lobby:signs/items/settings