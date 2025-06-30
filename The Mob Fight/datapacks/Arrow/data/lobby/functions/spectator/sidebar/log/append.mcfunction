data modify storage run log.new set from storage run log.log[0].content
scoreboard players set $signed calculator 1
function lobby:spectator/sidebar/log/new
scoreboard players set $signed calculator 0
data remove storage run log.log[0]
execute if data storage run log.log[0] run function lobby:spectator/sidebar/log/grab