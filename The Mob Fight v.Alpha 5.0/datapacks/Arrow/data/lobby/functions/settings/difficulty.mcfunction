playsound ui.button.click master @a ~ ~ ~
execute store result score #diffi calculator run difficulty
execute if score #diffi calculator matches 1 run difficulty normal
execute if score #diffi calculator matches 2 run difficulty hard
execute if score #diffi calculator matches 3 run difficulty easy
execute unless score #diffi calculator matches 1..3 run difficulty easy
function lobby:signs/items/settings