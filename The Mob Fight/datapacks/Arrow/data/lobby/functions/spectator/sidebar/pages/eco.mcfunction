function lobby:spectator/sidebar/calc_eco
function game:utility/eco/total
function game:utility/eco/check_sum
function game:utility/eco/div

function lobby:spectator/sidebar/spaces/gen

execute if score oreWaste red matches 999.. run scoreboard players set oreWaste red 999
execute if score oreWaste blue matches 999.. run scoreboard players set oreWaste blue 999

data modify storage sidebar.dah:data ui set value {title:'{"translate": "menu.eco"}',lore:['""'],lore_indent:"8",background:"a"}

data modify storage run parse.lore set from storage run menu.eco
function lobby:spectator/parse/parse
data modify storage sidebar.dah:data ui.lore set from storage run parse.out_lore

function sidebar.dah:modify/color {color:"dark_gray"}