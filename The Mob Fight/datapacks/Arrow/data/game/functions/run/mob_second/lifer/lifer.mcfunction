scoreboard players add @s genericCD 1
execute unless score @s genericCD matches 2.. run return fail

execute unless entity @e[tag=!mob.lifer,type=#game:mobs,distance=..11,limit=1] run return fail

scoreboard players set $success calculator 0
execute as @e[tag=!mob.lifer,type=#game:mobs,distance=..11,limit=1,sort=random] facing entity @s eyes run function game:run/mob_second/lifer/target
execute unless score $success calculator matches 1 run return fail
playsound minecraft:block.note_block.bass master @a ~ ~ ~ 1 1.4

scoreboard players set @s genericCD -7