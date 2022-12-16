function game:plugin/get_player_name
data modify storage developer:data MobArrow[-1].data append value {GameTime:-1}
data modify storage developer:data MobArrow[-1].data[-1].Name set from storage run result.Sell.display.Name
data modify storage developer:data MobArrow[-1].data[-1].Player set from storage run playerName
execute store result storage developer:data MobArrow[-1].data[-1].GameTime int 1 run scoreboard players get GameLength Data