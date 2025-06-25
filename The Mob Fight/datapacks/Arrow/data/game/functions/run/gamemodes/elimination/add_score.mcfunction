scoreboard players set playerCountScore Data -20
scoreboard players operation #x calculator = killScore Options
scoreboard players operation #x calculator /= #2 calculator
scoreboard players remove #x calculator 15
execute if score #x calculator matches ..15 run scoreboard players set #x calculator 15

scoreboard players operation #y calculator = #x calculator
scoreboard players operation #y calculator *= playerCountScore red
scoreboard players operation score red += #y calculator
scoreboard players add score red 3
scoreboard players operation #y calculator = #x calculator
scoreboard players operation #y calculator *= playerCountScore blue
scoreboard players operation score blue += #y calculator
scoreboard players add score blue 3
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.player_count_score","color": "green"}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s

function game:topbar/refresh