data modify storage sidebar.dah:data modify.run set from storage sidebar.dah:data ui.lore
execute unless data storage sidebar.dah:data modify.run[0] run return run function sidebar.dah:private/elements/reset with storage sidebar.dah:data modify
data modify storage sidebar.dah:data modify.line set value 1

execute if data storage sidebar.dah:data ui.lore_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data ui.lore_indent
execute unless data storage sidebar.dah:data ui.lore_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data data.lore_indent

scoreboard players set #holder data.sidebar.dah 0
function sidebar.dah:private/elements/lore/loop_lore