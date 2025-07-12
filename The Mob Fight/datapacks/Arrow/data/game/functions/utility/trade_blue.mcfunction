scoreboard players add score blue 40
execute if score score blue >= TargetScore calculator run scoreboard players operation score blue = TargetScore calculator
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.traded_with_lucifer.blue","with":[{"selector":"@s","color": "green"},{"text": "40","color": "gold"}]}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s
function game:topbar/refresh