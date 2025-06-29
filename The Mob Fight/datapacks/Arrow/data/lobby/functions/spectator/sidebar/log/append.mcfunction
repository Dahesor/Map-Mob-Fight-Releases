data modify storage run log.new set from storage run log.log[0].content
function lobby:spectator/sidebar/log/new
data remove storage run log.log[0]
execute if data storage run log.log[0] run function lobby:spectator/sidebar/log/grab