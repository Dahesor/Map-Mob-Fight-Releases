execute as @a at @s run playsound arrow:event.final.hint master @s
title @a times 10 40 20
title @a title {"translate":"last_minute","color": "red"}
title @a subtitle {"translate":"counting_down","color": "yellow"}
schedule function game:end/count_down/30s 30s