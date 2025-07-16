tp @s 0 137 0
gamemode spectator @s
team leave @s
clear @s
effect clear @s
tag @s remove spec_menu
function lobby:spectator/switch/all
scoreboard players display numberformat @s belowName fixed {"text":" 📷","color": "gray"}
tellraw @s [{"translate": "chat.head.game"}," ",{"translate": "menu.start.message","clickEvent": {"action": "suggest_command","value": "/trigger spec"}}]
playsound entity.experience_orb.pickup master @s

function sidebar.dah:visible/show_color {color:"dark_gray"}
function sidebar.dah:visible/show_color {color:"gray"}
function sidebar.dah:visible/show_color {color:"white"}