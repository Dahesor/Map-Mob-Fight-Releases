#macro: $(color)

data modify storage sidebar.dah:data data.test set value ""
$data modify storage sidebar.dah:data data.test set value "$(color)"

execute if data storage sidebar.dah:data data{test:"aqua"} run return run scoreboard objectives setdisplay sidebar.team.aqua sidebar.AQUA.dah
execute if data storage sidebar.dah:data data{test:"blue"} run return run scoreboard objectives setdisplay sidebar.team.blue sidebar.BLUE.dah
execute if data storage sidebar.dah:data data{test:"dark_aqua"} run return run scoreboard objectives setdisplay sidebar.team.dark_aqua sidebar.DARK_AQUA.dah
execute if data storage sidebar.dah:data data{test:"dark_blue"} run return run scoreboard objectives setdisplay sidebar.team.dark_blue sidebar.DARK_BLUE.dah
execute if data storage sidebar.dah:data data{test:"dark_gray"} run return run scoreboard objectives setdisplay sidebar.team.dark_gray sidebar.DARK_GRAY.dah
execute if data storage sidebar.dah:data data{test:"dark_green"} run return run scoreboard objectives setdisplay sidebar.team.dark_green sidebar.DARK_GREEN.dah
execute if data storage sidebar.dah:data data{test:"dark_purple"} run return run scoreboard objectives setdisplay sidebar.team.dark_purple sidebar.DARK_PURPLE.dah
execute if data storage sidebar.dah:data data{test:"dark_red"} run return run scoreboard objectives setdisplay sidebar.team.dark_red sidebar.DARK_RED.dah
execute if data storage sidebar.dah:data data{test:"gold"} run return run scoreboard objectives setdisplay sidebar.team.gold sidebar.GOLD.dah
execute if data storage sidebar.dah:data data{test:"gray"} run return run scoreboard objectives setdisplay sidebar.team.gray sidebar.GRAY.dah
execute if data storage sidebar.dah:data data{test:"green"} run return run scoreboard objectives setdisplay sidebar.team.green sidebar.GREEN.dah
execute if data storage sidebar.dah:data data{test:"light_purple"} run return run scoreboard objectives setdisplay sidebar.team.light_purple sidebar.LIGHT_PURPLE.dah
execute if data storage sidebar.dah:data data{test:"red"} run return run scoreboard objectives setdisplay sidebar.team.red sidebar.RED.dah
execute if data storage sidebar.dah:data data{test:"white"} run return run scoreboard objectives setdisplay sidebar.team.white sidebar.WHITE.dah
execute if data storage sidebar.dah:data data{test:"yellow"} run return run scoreboard objectives setdisplay sidebar.team.yellow sidebar.YELLOW.dah
execute if data storage sidebar.dah:data data{test:"black"} run return run scoreboard objectives setdisplay sidebar.team.black sidebar.BLACK.dah
return fail