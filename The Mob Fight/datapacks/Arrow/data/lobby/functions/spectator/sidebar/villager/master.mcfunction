scoreboard players add $vil_flash calculator 1
execute if score $vil_flash calculator matches 2.. run scoreboard players set $vil_flash calculator 0

data modify storage run menu.log[1] set value {text:" ",extra:[{text:""},{text:""},{text:""},{text:"  "},{text:""},{text:""},{text:""}]}

scoreboard players set $side calculator 0
execute if data storage run vil.red[0] run data modify storage run vil.this set from storage run vil.red[0]
execute if data storage run vil.red[0] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.red[0] run data modify storage run menu.log[1].extra[0].text set from storage run string

execute if data storage run vil.red[1] run data modify storage run vil.this set from storage run vil.red[1]
execute if data storage run vil.red[1] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.red[1] run data modify storage run menu.log[1].extra[1].text set from storage run string

execute if data storage run vil.red[2] run data modify storage run vil.this set from storage run vil.red[2]
execute if data storage run vil.red[2] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.red[2] run data modify storage run menu.log[1].extra[2].text set from storage run string

scoreboard players reset $side
execute if data storage run vil.blue[0] run data modify storage run vil.this set from storage run vil.blue[0]
execute if data storage run vil.blue[0] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.blue[0] run data modify storage run menu.log[1].extra[4].text set from storage run string

execute if data storage run vil.blue[1] run data modify storage run vil.this set from storage run vil.blue[1]
execute if data storage run vil.blue[1] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.blue[1] run data modify storage run menu.log[1].extra[5].text set from storage run string

execute if data storage run vil.blue[2] run data modify storage run vil.this set from storage run vil.blue[2]
execute if data storage run vil.blue[2] run function lobby:spectator/sidebar/villager/get_icon
execute if data storage run vil.blue[2] run data modify storage run menu.log[1].extra[6].text set from storage run string