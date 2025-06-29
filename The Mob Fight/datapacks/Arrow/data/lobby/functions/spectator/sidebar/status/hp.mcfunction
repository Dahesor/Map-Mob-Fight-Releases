scoreboard players set $hp red 100
scoreboard players operation $hp red < @a[gamemode=adventure,team=red] health
scoreboard players set $hp blue 100
scoreboard players operation $hp blue < @a[gamemode=adventure,team=blue] health

execute if score $hp red matches ..6 if score $vil_flash calculator matches 1 run data modify storage run menu.log[3].extra[2].text set value ""
execute if score $hp blue matches ..6 if score $vil_flash calculator matches 1 run data modify storage run menu.log[3].extra[-2].text set value ""

execute if score $hp red matches ..6 if score $vil_flash calculator matches 0 run data modify storage run menu.log[3].extra[2].text set value ""
execute if score $hp blue matches ..6 if score $vil_flash calculator matches 0 run data modify storage run menu.log[3].extra[-2].text set value ""