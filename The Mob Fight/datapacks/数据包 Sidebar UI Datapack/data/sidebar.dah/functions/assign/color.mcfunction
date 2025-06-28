#macro: $(color)

data modify storage sidebar.dah:data data.test set value ""
$data modify storage sidebar.dah:data data.test set value "$(color)"

execute if data storage sidebar.dah:data data{test:"aqua"} run return run scoreboard players set @s data.sidebar.dah 1
execute if data storage sidebar.dah:data data{test:"blue"} run return run scoreboard players set @s data.sidebar.dah 2
execute if data storage sidebar.dah:data data{test:"dark_aqua"} run return run scoreboard players set @s data.sidebar.dah 3
execute if data storage sidebar.dah:data data{test:"dark_blue"} run return run scoreboard players set @s data.sidebar.dah 4
execute if data storage sidebar.dah:data data{test:"dark_gray"} run return run scoreboard players set @s data.sidebar.dah 5
execute if data storage sidebar.dah:data data{test:"dark_green"} run return run scoreboard players set @s data.sidebar.dah 6
execute if data storage sidebar.dah:data data{test:"dark_purple"} run return run scoreboard players set @s data.sidebar.dah 7
execute if data storage sidebar.dah:data data{test:"dark_red"} run return run scoreboard players set @s data.sidebar.dah 8
execute if data storage sidebar.dah:data data{test:"gold"} run return run scoreboard players set @s data.sidebar.dah 9
execute if data storage sidebar.dah:data data{test:"gray"} run return run scoreboard players set @s data.sidebar.dah 10
execute if data storage sidebar.dah:data data{test:"green"} run return run scoreboard players set @s data.sidebar.dah 11
execute if data storage sidebar.dah:data data{test:"light_purple"} run return run scoreboard players set @s data.sidebar.dah 12
execute if data storage sidebar.dah:data data{test:"red"} run return run scoreboard players set @s data.sidebar.dah 13
execute if data storage sidebar.dah:data data{test:"white"} run return run scoreboard players set @s data.sidebar.dah 14
execute if data storage sidebar.dah:data data{test:"yellow"} run return run scoreboard players set @s data.sidebar.dah 15
execute if data storage sidebar.dah:data data{test:"black"} run return run scoreboard players set @s data.sidebar.dah 16
return fail