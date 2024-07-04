advancement grant @s only lobby:upgrade

execute if entity @s[team=blue] run scoreboard players add science_techno blue 1
execute if entity @s[team=red] run scoreboard players add science_techno red 1
execute if entity @s[team=red] run data merge storage game:announcement {system:'[{"translate":"红队的"},{"translate":"science_techno","with":[""]},{"translate":"level_up","with":[{"score":{"objective": "red","name": "science_techno"},"color": "green"}]}]'}
execute if entity @s[team=blue] run data merge storage game:announcement {system:'[{"translate":"蓝队的"},{"translate":"science_techno","with":[""]},{"translate":"level_up","with":[{"score":{"objective": "blue","name": "science_techno"},"color": "green"}]}]'}
function game:shop/initialize
execute if entity @s[team=blue] if score science_techno blue matches 3 run scoreboard players add techNetherite blue 2
execute if entity @s[team=red] if score science_techno red matches 3 run scoreboard players add techNetherite red 2

tag @s add excluded
execute as @a[tag=!excluded] run function ui:foolproof/check
execute as @a run function ui:foolproof/redirect
tag @a remove excluded

scoreboard players operation @a[team=red] harvest_level = science_techno red
scoreboard players operation @a[team=blue] harvest_level = science_techno blue

