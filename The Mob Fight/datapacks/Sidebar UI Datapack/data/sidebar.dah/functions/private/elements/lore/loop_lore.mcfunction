scoreboard players add #holder data.sidebar.dah 1
execute store result storage sidebar.dah:data modify.line int 1 run scoreboard players get #holder data.sidebar.dah
execute if data storage sidebar.dah:data modify.run[0] run data modify storage sidebar.dah:data modify.lore set from storage sidebar.dah:data modify.run[0]
execute unless data storage sidebar.dah:data modify.run[0] run data modify storage sidebar.dah:data modify.lore set value '""'
function sidebar.dah:private/elements/lore/render with storage sidebar.dah:data modify

data remove storage sidebar.dah:data modify.run[0]
execute if score #holder data.sidebar.dah matches ..13 run function sidebar.dah:private/elements/lore/loop_lore