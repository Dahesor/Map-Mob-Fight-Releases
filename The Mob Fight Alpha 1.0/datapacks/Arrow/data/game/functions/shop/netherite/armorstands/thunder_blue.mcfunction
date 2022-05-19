advancement revoke @s only game:altar/thunder_red
scoreboard players set @e[type=armor_stand,tag=altar_mark.blue.thunder] genericCD 5
data merge entity @e[type=armor_stand,tag=altar_mark.blue.thunder,limit=1] {CustomNameVisible:1b}
