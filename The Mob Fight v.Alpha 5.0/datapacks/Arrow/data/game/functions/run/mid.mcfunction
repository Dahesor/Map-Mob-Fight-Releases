execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s
title @a times 10 65 16
title @a title {"translate":"title.half_time","color": "red"}
title @a subtitle {"translate":"subtitle.half_time.1","color": "yellow"}
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"title.half_time","color": "red"},"! ",{"translate":"chatbox.half_time","color": "yellow"}]

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
schedule function game:utility/screens/half_time_2 20t append
schedule function game:utility/screens/half_time_1 40t append
schedule function game:utility/screens/half_time_2 60t append
schedule function game:utility/screens/half_time_1 80t append