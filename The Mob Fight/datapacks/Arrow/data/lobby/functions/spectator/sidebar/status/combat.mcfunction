execute if score combatIndex red matches 10..30 run data modify storage run menu.log[3].extra[3].text set value ""
execute if score combatIndex blue matches 10..30 run data modify storage run menu.log[3].extra[-3].text set value ""

execute if score combatIndex red matches 31..79 run data modify storage run menu.log[3].extra[3].text set value ""
execute if score combatIndex blue matches 31..79 run data modify storage run menu.log[3].extra[-3].text set value ""

execute if score combatIndex red matches 80..149 run data modify storage run menu.log[3].extra[3].text set value ""
execute if score combatIndex blue matches 80..149 run data modify storage run menu.log[3].extra[-3].text set value ""

execute if score combatIndex red matches 150.. run data modify storage run menu.log[3].extra[3].text set value ""
execute if score combatIndex blue matches 150.. run data modify storage run menu.log[3].extra[-3].text set value ""