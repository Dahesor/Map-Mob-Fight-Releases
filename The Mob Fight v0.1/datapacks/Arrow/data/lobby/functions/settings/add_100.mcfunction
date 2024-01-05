playsound ui.button.click master @a ~ ~ ~ 1 1.5
scoreboard players add TargetScore Options 100
execute if score TargetScore Options matches 5000.. run scoreboard players set TargetScore Options 5000
function lobby:signs/items/settings