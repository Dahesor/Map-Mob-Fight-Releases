stopsound @a master arrow:event.game_waiting
execute if score #startPend calculator matches 7 as @a at @s run playsound arrow:event.unlock master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 7 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.all_players_ready"}]

execute if score #startPend calculator matches 1..5 run title @a times 0 22 0
execute if score #startPend calculator matches 5 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 2 1.1
execute if score #startPend calculator matches 5 run title @a title {"text": "5","color": "green"}
execute if score #startPend calculator matches 4 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 2 1.1
execute if score #startPend calculator matches 4 run title @a title {"text": "4","color": "green"}
execute if score #startPend calculator matches 3 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 2 1.1
execute if score #startPend calculator matches 3 run title @a title {"text": "3","color": "yellow"}
execute if score #startPend calculator matches 2 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 2 1.1
execute if score #startPend calculator matches 2 run title @a title {"text": "2","color": "gold"}
execute if score #startPend calculator matches 1 as @a at @s run playsound minecraft:block.note_block.harp master @s ~ ~ ~ 2 1.1
execute if score #startPend calculator matches 1 run title @a title {"text": "1","color": "red"}
execute if score #startPend calculator matches 0 as @a at @s run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5 1
execute if score #startPend calculator matches 0 run title @a times 0 45 30
execute if score #startPend calculator matches 0 run title @a title {"text": "Start!","color": "green"}
execute if score #startPend calculator matches 0 run function game:start
execute if score #startPend calculator matches 0 as @a at @s as @a at @s run playsound minecraft:item.totem.use master @s ~ ~ ~ 1.0 0.75 1.0
