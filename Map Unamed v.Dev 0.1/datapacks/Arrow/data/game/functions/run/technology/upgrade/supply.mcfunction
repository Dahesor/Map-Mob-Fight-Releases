execute if entity @s[team=blue] run scoreboard players add supplyBuckupLevel blue 1
execute if entity @s[team=red] run scoreboard players add supplyBuckupLevel red 1
execute if entity @s[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"supply"},{"translate":"level_up","with":[{"score":{"objective": "red","name": "supplyBuckupLevel"},"color": "green"}]}]'}
execute if entity @s[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"supply"},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "supplyBuckupLevel"},"color": "green"}]}]'}
function game:shop/initialize
execute as @a run function ui:foolproof/redirect