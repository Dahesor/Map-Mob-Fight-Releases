function game:plugin/get_player_name
data modify storage developer:data General[-1].data append value {GameTime:-1}
data modify storage developer:data General[-1].data[-1].Name set from storage run PayName
data modify storage developer:data General[-1].data[-1].Player set from storage run playerName
execute store result storage developer:data General[-1].data[-1].GameTime int 1 run scoreboard players get GameLength Data
data remove storage run PayName