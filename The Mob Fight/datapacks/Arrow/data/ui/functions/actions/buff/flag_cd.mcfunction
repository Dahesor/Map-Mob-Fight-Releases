tellraw @s {"translate": "status.cooling","color": "red"}
execute at @s run playsound entity.enderman.teleport master @s ~ ~ ~
function ui:actions/buff/anchor