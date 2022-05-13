execute if entity @s[team=blue] run scoreboard players add magicLabLevel blue 1
execute if entity @s[team=red] run scoreboard players add magicLabLevel red 1
execute if entity @s[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"magic"},{"translate":"level_up","with":[{"score":{"objective": "red","name": "magicLabLevel"},"color": "green"}]}]'}
execute if entity @s[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"magic"},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "magicLabLevel"},"color": "green"}]}]'}
function game:shop/initialize
execute as @a run function ui:foolproof/redirect