summon lightning_bolt
scoreboard players add @s genericCD 1
data merge entity @s {pickup:0b}
kill @s[scores={genericCD=10..}]
execute if score GameMode Data matches 2 if entity @s[scores={genericCD=1}] run data modify storage thunder:event light append value {id:"thunder",moves:[{light:1b,time:20,speed_change:0b},{light:0b,time:2,speed_change:0b}]}
