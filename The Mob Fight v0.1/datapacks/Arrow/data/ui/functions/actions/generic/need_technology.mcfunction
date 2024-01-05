execute at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 1 0.2
tellraw @s {"translate":"[商店] 科技不足，请先升级科技！","color": "red"}
function ui:foolproof/redirect