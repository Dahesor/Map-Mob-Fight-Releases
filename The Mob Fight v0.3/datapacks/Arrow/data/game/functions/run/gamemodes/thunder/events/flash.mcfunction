execute as @a at @s run playsound entity.lightning_bolt.thunder weather @s
scoreboard players set #thunder_c calculator -60


execute store result score #randomTHUNDER calculator run random value 1..5
execute if score #randomTHUNDER calculator matches 1 run data modify storage thunder:event light append value {id:"flash",moves:[{light:1b,time:10,speed_change:0b},{light:0b,time:10,speed_change:0b},{light:1b,time:20,speed_change:0b}]}
execute if score #randomTHUNDER calculator matches 2 run data modify storage thunder:event light append value {id:"flash",moves:[{light:1b,time:30,speed_change:0b},{light:0b,time:5,speed_change:0b},{light:1b,time:10,speed_change:0b}]}
execute if score #randomTHUNDER calculator matches 3 run data modify storage thunder:event light append value {id:"flash",moves:[{light:1b,time:5,speed_change:0b},{light:0b,time:5,speed_change:0b},{light:1b,time:5,speed_change:0b},{light:0b,time:5,speed_change:0b},{light:1b,time:17,speed_change:0b}]}
execute if score #randomTHUNDER calculator matches 4 run data modify storage thunder:event light append value {id:"flash",moves:[{light:1b,time:15,speed_change:0b},{light:0b,time:15,speed_change:0b},{light:1b,time:15,speed_change:0b}]}
execute if score #randomTHUNDER calculator matches 5 run data modify storage thunder:event light append value {id:"flash",moves:[{light:1b,time:5,speed_change:0b},{light:0b,time:20,speed_change:0b},{light:1b,time:25,speed_change:0b}]}
