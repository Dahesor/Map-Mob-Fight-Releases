execute as @a at @s run playsound arrow:event.final.hint master @s
title @a times 10 40 20
title @a title {"translate":"last_minute","color": "red"}
title @a subtitle {"translate":"counting_down","color": "yellow"}

data modify storage run log.new set value {"translate":"last_minute","color": "red"}
function lobby:spectator/sidebar/log/new