summon armor_stand ^ ^ ^ {Tags:["altar_mark.red","altar_mark.red.thunder"],NoGravity:1b,Small:1b}
execute positioned ^ ^ ^2 run tp @e[type=armor_stand,tag=altar_mark.red.thunder] ~ ~ ~
#execute rotated as @s as @e[type=armor_stand,tag=altar_mark.red.thunder] positioned ^ ^ ^1 run function dtm:calculate_motion