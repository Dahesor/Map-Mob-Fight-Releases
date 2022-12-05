execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s
title @a times 10 55 16
title @a title {"translate":"title.half_time","color": "red"}
title @a subtitle {"translate":"subtitle.half_time","color": "yellow"}
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"title.half_time","color": "red"},"! ",{"translate":"subtitle.half_time","color": "yellow"}]

scoreboard players operation oreCoolDown red *= #2 calculator
scoreboard players operation oreCoolDown red /= #3 calculator
scoreboard players operation oreCoolDown blue *= #2 calculator
scoreboard players operation oreCoolDown blue /= #3 calculator
scoreboard players set destroyMode Data 1
function game:run/resources/20_more
schedule function game:run/resources/20_more 1s append
schedule function game:run/resources/20_more 2s append
schedule function game:run/resources/20_more 3s append
schedule function game:run/resources/20_more 4s append