stopsound @a master arrow:event.game_waiting
execute if score #startPend calculator matches 12 run playsound arrow:event.unlock master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 12 run tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.all_players_ready"}]

execute if score #startPend calculator matches 1..10 run title @a times 0 22 0
execute if score #startPend calculator matches 10 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 10 run title @a title {"text": "10","color": "green"}
execute if score #startPend calculator matches 9 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 9 run title @a title {"text": "9","color": "green"}
execute if score #startPend calculator matches 8 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 8 run title @a title {"text": "8","color": "green"}
execute if score #startPend calculator matches 7 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 7 run title @a title {"text": "7","color": "green"}
execute if score #startPend calculator matches 6 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 6 run title @a title {"text": "6","color": "green"}
execute if score #startPend calculator matches 5 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 5 run title @a title {"text": "5","color": "green"}
execute if score #startPend calculator matches 4 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 4 run title @a title {"text": "4","color": "green"}
execute if score #startPend calculator matches 3 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 3 run title @a title {"text": "3","color": "yellow"}
execute if score #startPend calculator matches 2 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 2 run title @a title {"text": "2","color": "gold"}
execute if score #startPend calculator matches 1 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 0.8 1
execute if score #startPend calculator matches 1 run title @a title {"text": "1","color": "red"}
execute if score #startPend calculator matches 0 run playsound entity.experience_orb.pickup master @a ~ ~ ~ 1 1.5 1
execute if score #startPend calculator matches 0 run title @a title {"text": "Start!","color": "green"}
execute if score #startPend calculator matches 0 run function game:start
