data modify storage run name.id set value 0
execute store result storage run name.id int 1 run scoreboard players get @s UID
function lobby:spectator/sidebar/log/name/__get_name with storage run name
return run scoreboard players get @s UID