execute as @a at @s run playsound arrow:event.final.hint master @s
execute as @a at @s run playsound arrow:event.final.30s master @s
title @a times 10 40 20
title @a title {"translate":"time.second","with":[30],"color": "green"}
title @a subtitle {"translate":"game_end_in","color": "red"}
schedule function game:end/count_down/20s 10s
