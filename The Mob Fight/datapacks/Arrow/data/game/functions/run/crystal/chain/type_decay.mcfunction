function game:run/crystal/chain/get_type
execute store result score #same calculator run data modify storage run macro_death.self set from storage run macro_death.type
execute if score #same calculator matches 1.. run return run execute store result storage run macro_death.damage float 0.04 run scoreboard players get #death_note calculator
execute store result storage run macro_death.damage float 0.1 run scoreboard players get #death_note calculator