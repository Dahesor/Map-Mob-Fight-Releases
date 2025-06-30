data modify storage sidebar.dah:data modify.title set from storage sidebar.dah:data ui.title

execute if data storage sidebar.dah:data ui.title_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data ui.title_indent
execute unless data storage sidebar.dah:data ui.title_indent run data modify storage sidebar.dah:data modify.indent set from storage sidebar.dah:data data.title_indent


function sidebar.dah:private/elements/title/render with storage sidebar.dah:data modify