scoreboard players set $sum calculator 0
scoreboard players operation #holder calculator = dirt.spent red
scoreboard players operation #holder calculator *= #8 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = iron.spent red
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = copper.spent red
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = gold.spent red
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = lapis.spent red
scoreboard players operation #holder calculator *= #18 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = diamond.spent red
scoreboard players operation #holder calculator *= #20 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = netherite.spent red
scoreboard players operation #holder calculator *= #1000 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation attack_cost red = $sum calculator
scoreboard players operation attack_cost red -= dev_cost red
scoreboard players operation total_hold red = total_eco red
scoreboard players operation total_hold red -= $sum calculator

scoreboard players set $sum calculator 0

scoreboard players operation #holder calculator = dirt.spent blue
scoreboard players operation #holder calculator *= #8 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = iron.spent blue
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = copper.spent blue
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = gold.spent blue
scoreboard players operation #holder calculator *= #16 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = lapis.spent blue
scoreboard players operation #holder calculator *= #18 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = diamond.spent blue
scoreboard players operation #holder calculator *= #20 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation #holder calculator = netherite.spent blue
scoreboard players operation #holder calculator *= #1000 calculator
scoreboard players operation $sum calculator += #holder calculator

scoreboard players operation attack_cost blue = $sum calculator
scoreboard players operation attack_cost blue -= dev_cost blue
execute if score attack_cost red matches ..0 run scoreboard players set attack_cost red 0
execute if score attack_cost blue matches ..0 run scoreboard players set attack_cost blue 0
scoreboard players operation total_hold blue = total_eco blue
scoreboard players operation total_hold blue -= $sum calculator