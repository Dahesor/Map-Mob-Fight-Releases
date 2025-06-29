execute if score @s UID matches 1.. run return run function lobby:spectator/sidebar/log/name/prepare
scoreboard players add #UID UID 1
data modify storage run name.id set value 0
execute store result storage run name.id int 1 run scoreboard players get #UID UID
function lobby:spectator/sidebar/log/name/find_name
function lobby:spectator/sidebar/log/name/__save_name with storage run name
return run scoreboard players operation @s UID = #UID UID