advancement grant @s only lobby:upgrade
execute if entity @s[team=blue] run scoreboard players add magic_occult blue 1
execute if entity @s[team=red] run scoreboard players add magic_occult red 1
execute if entity @s[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"magic_occult","with":[""]},{"translate":"level_up","with":[{"score":{"objective": "red","name": "magic_occult"},"color": "green"}]}]'}
execute if entity @s[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"magic_occult","with":[""]},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "magic_occult"},"color": "green"}]}]'}
execute if entity @s[team=blue] if score magic_occult blue matches 3 run scoreboard players add techNetherite blue 2
execute if entity @s[team=red] if score magic_occult red matches 3 run scoreboard players add techNetherite red 2
function game:shop/initialize
tag @s add excluded
execute as @a[tag=!excluded] run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect
tag @a remove excluded

function game:run/crystal/add/check

