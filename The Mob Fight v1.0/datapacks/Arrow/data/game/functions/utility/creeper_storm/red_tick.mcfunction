scoreboard players remove creeperStorm red 1
execute if score creeperStorm red matches 0 run effect give @e[type=creeper] fire_resistance 10 0 true
execute if score creeperStorm red matches 0 as @e[type=creeper] at @s if predicate map:in_blue run summon lightning_bolt
execute if score creeperStorm red matches 0 as @a[team=red,scores={UI=70}] run function ui:actions/buff/anchor
execute if score creeperStorm red matches 0 if entity @e[type=creeper,predicate=map:in_blue] if score GameMode Data matches 2 run data modify storage thunder:event light append value {id:"thunder",moves:[{light:1b,time:60,speed_change:0b},{light:0b,time:2,speed_change:0b}]}
