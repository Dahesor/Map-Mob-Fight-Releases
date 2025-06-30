scoreboard players operation #second calculator = GameLength Data
scoreboard players operation #minute calculator = #second calculator
scoreboard players operation #minute calculator /= #1200 calculator
scoreboard players operation #second calculator %= #1200 calculator
scoreboard players operation #second calculator /= #20 calculator

data modify storage run time set value {minute:0,second:0,ten:"",string:""}
execute if score #second calculator matches ..9 run data modify storage run time.ten set value "0"
execute store result storage run time.minute int 1 run scoreboard players get #minute calculator
execute store result storage run time.second int 1 run scoreboard players get #second calculator
function lobby:spectator/sidebar/__get_time with storage run time

data modify storage sidebar.dah:data ui set value {title:'{"translate": "menu.log"}',lore:['""'],lore_indent:"8",background:"b",title_indent:"=2"}

data modify storage run menu.log[0].extra[0].text set from storage run time.string

function lobby:spectator/sidebar/villager/master
execute if score $vil_flash calculator matches 0 store result score mob_count red if entity @e[type=#game:mobs,predicate=map:in_red]
execute if score $vil_flash calculator matches 1 store result score mob_count blue if entity @e[type=#game:mobs,predicate=map:in_blue]


data modify storage run menu.log[3] set value {text:" ",extra:[{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""},{text:""}]}

execute unless score player_alive red matches 1.. run data modify storage run menu.log[3].extra[1].text set value ""
execute unless score player_alive blue matches 1.. run data modify storage run menu.log[3].extra[-1].text set value ""

function lobby:spectator/sidebar/status/master
function lobby:spectator/sidebar/log/grab

data modify storage run parse.lore set from storage run menu.log
function lobby:spectator/parse/parse
data modify storage sidebar.dah:data ui.lore set from storage run parse.out_lore

execute if score $switch calculator matches ..200 run function sidebar.dah:modify/color {color:"dark_gray"}
execute if entity @a[team=spec_log] run function sidebar.dah:modify/color {color:"gray"}