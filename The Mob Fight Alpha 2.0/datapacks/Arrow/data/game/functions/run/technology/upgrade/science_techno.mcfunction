execute if entity @s[team=blue] run scoreboard players add science_techno blue 1
execute if entity @s[team=red] run scoreboard players add science_techno red 1
execute if entity @s[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"science_techno"},{"translate":"level_up","with":[{"score":{"objective": "red","name": "science_techno"},"color": "green"}]}]'}
execute if entity @s[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"science_techno"},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "science_techno"},"color": "green"}]}]'}
function game:shop/initialize
execute as @a run function ui:foolproof/redirect