playsound ui.button.click master @a ~ ~ ~
execute unless score doArrowLandPosCheck Options matches 0..1 run scoreboard players set doArrowLandPosCheck Options 0
scoreboard players set #tempS calculator 1
scoreboard players operation #tempS calculator -= doArrowLandPosCheck Options
scoreboard players operation doArrowLandPosCheck Options = #tempS calculator
function lobby:signs/items/settings