execute as @a[tag=spectator] run title @a times 10 50 10
execute as @a[tag=spectator] run title @s title ""
execute as @a[tag=spectator] run title @s subtitle {"translate": "menu.start"}
execute as @a[tag=spectator] run function lobby:spectator/switch/all
execute as @a[tag=spectator] run scoreboard players display numberformat @s belowName fixed {"text":" 📷","color": "gray"}
execute as @a[tag=spectator] run tellraw @s [{"translate": "chat.head.game"}," ",{"translate": "menu.start.message","clickEvent": {"action": "suggest_command","value": "/trigger spec"}}]
execute as @a[tag=spectator] at @s run playsound entity.experience_orb.pickup master @s

function sidebar.dah:visible/show_color {color:"dark_gray"}
function sidebar.dah:visible/show_color {color:"gray"}
function sidebar.dah:visible/show_color {color:"white"}