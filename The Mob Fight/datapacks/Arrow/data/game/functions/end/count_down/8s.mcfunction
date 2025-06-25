execute as @a at @s run playsound arrow:event.final.countdown master @s
title @a times 0 20 30
title @a title {"text": "8","color": "red"}
title @a subtitle " "
schedule function game:end/count_down/7s 1s