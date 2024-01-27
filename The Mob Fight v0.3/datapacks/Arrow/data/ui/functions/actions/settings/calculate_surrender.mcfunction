scoreboard players set surrender calculator 0
execute store result score #player_red calculator run execute if entity @a[team=red]
execute store result score #player_blue calculator run execute if entity @a[team=blue]

execute store result score surrender calculator run execute if entity @a[team=red,scores={surrender=1..}]
scoreboard players operation surrender calculator *= #10000 calculator
scoreboard players operation surrender calculator /= #player_red calculator
execute if score #player_red calculator matches 1.. if score surrender calculator matches 6000.. run function ui:actions/settings/red_surrender
execute if score surrender calculator matches ..5999 if score surrender red matches 0.. run function ui:actions/settings/red_surrender_cancel

execute store result score surrender calculator run execute if entity @a[team=blue,scores={surrender=1..}]
scoreboard players operation surrender calculator *= #10000 calculator
scoreboard players operation surrender calculator /= #player_blue calculator
execute if score #player_blue calculator matches 1.. if score surrender calculator matches 6000.. run function ui:actions/settings/blue_surrender
execute if score surrender calculator matches ..5999 if score surrender blue matches 0.. run function ui:actions/settings/blue_surrender_cancel
