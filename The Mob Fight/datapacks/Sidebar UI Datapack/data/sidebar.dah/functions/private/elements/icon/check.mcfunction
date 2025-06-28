execute if data storage sidebar.dah:data ui.icon_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data ui.icon_indent
execute unless data storage sidebar.dah:data ui.icon_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data data.icon_indent

data modify storage sidebar.dah:data modify.icon set from storage sidebar.dah:data ui.icon

function sidebar.dah:private/elements/icon/render with storage sidebar.dah:data modify