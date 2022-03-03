execute if entity @a[team=blue] run scoreboard players add metalWorkLevel blue 1
execute if entity @a[team=red] run scoreboard players add metalWorkLevel red 1
execute if entity @a[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"supply"},{"translate":"level_up","with":[{"score":{"objective": "red","name": "metalWorkLevel"},"color": "green"}]}]'}
execute if entity @a[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"supply"},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "metalWorkLevel"},"color": "green"}]}]'}
function game:shop/initialize
execute as @a run function ui:foolproof/redirect