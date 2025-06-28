#macro: $(color)

data modify storage sidebar.dah:data data.test set value ""
$data modify storage sidebar.dah:data data.test set value "$(color)"

execute if data storage sidebar.dah:data data{test:"aqua"} run return run scoreboard objectives setdisplay sidebar.team.aqua
execute if data storage sidebar.dah:data data{test:"blue"} run return run scoreboard objectives setdisplay sidebar.team.blue
execute if data storage sidebar.dah:data data{test:"dark_aqua"} run return run scoreboard objectives setdisplay sidebar.team.dark_aqua
execute if data storage sidebar.dah:data data{test:"dark_blue"} run return run scoreboard objectives setdisplay sidebar.team.dark_blue
execute if data storage sidebar.dah:data data{test:"dark_gray"} run return run scoreboard objectives setdisplay sidebar.team.dark_gray
execute if data storage sidebar.dah:data data{test:"dark_green"} run return run scoreboard objectives setdisplay sidebar.team.dark_green
execute if data storage sidebar.dah:data data{test:"dark_purple"} run return run scoreboard objectives setdisplay sidebar.team.dark_purple
execute if data storage sidebar.dah:data data{test:"dark_red"} run return run scoreboard objectives setdisplay sidebar.team.dark_red
execute if data storage sidebar.dah:data data{test:"gold"} run return run scoreboard objectives setdisplay sidebar.team.gold
execute if data storage sidebar.dah:data data{test:"gray"} run return run scoreboard objectives setdisplay sidebar.team.gray
execute if data storage sidebar.dah:data data{test:"green"} run return run scoreboard objectives setdisplay sidebar.team.green
execute if data storage sidebar.dah:data data{test:"light_purple"} run return run scoreboard objectives setdisplay sidebar.team.light_purple
execute if data storage sidebar.dah:data data{test:"red"} run return run scoreboard objectives setdisplay sidebar.team.red
execute if data storage sidebar.dah:data data{test:"white"} run return run scoreboard objectives setdisplay sidebar.team.white
execute if data storage sidebar.dah:data data{test:"yellow"} run return run scoreboard objectives setdisplay sidebar.team.yellow
execute if data storage sidebar.dah:data data{test:"black"} run return run scoreboard objectives setdisplay sidebar.team.black
return fail