scoreboard players set science_techno red 3
scoreboard players set science_techno blue 3
scoreboard players set magic_occult red 3
scoreboard players set magic_occult blue 3
scoreboard players set society_populate red 3
scoreboard players set society_populate blue 3


scoreboard players set science_techno calculator 3
scoreboard players set magic_occult calculator 3
scoreboard players set society_populate calculator 3

scoreboard players operation @a[team=red] harvest_level = science_techno red
scoreboard players operation @a[team=blue] harvest_level = science_techno blue
function game:shop/initialize