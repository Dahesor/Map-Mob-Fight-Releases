execute if score mob_count red matches 1..7 run data modify storage run menu.log[3].extra[4].text set value ""
execute if score mob_count blue matches 1..7 run data modify storage run menu.log[3].extra[-4].text set value ""

execute if score mob_count red matches 8..19 run data modify storage run menu.log[3].extra[4].text set value ""
execute if score mob_count blue matches 8..19 run data modify storage run menu.log[3].extra[-4].text set value ""

execute if score mob_count red matches 20..41 run data modify storage run menu.log[3].extra[4].text set value ""
execute if score mob_count blue matches 20..41 run data modify storage run menu.log[3].extra[-4].text set value ""

execute if score mob_count red matches 42.. run data modify storage run menu.log[3].extra[4].text set value ""
execute if score mob_count blue matches 42.. run data modify storage run menu.log[3].extra[-4].text set value ""