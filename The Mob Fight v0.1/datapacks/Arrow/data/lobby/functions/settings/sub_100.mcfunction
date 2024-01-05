playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players remove TargetScore Options 100
execute if score TargetScore Options matches ..100 run scoreboard players set TargetScore Options 100
function lobby:signs/items/settings