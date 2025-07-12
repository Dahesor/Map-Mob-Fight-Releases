scoreboard players add score red 40
execute if score score red >= TargetScore calculator run scoreboard players operation score red = TargetScore calculator
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.traded_with_lucifer.red","with":[{"selector":"@s","color": "green"},{"text": "40","color": "gold"}]}]
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s
function game:topbar/refresh