scoreboard players add @s hpPotionCD 1
playsound block.enchantment_table.use hostile @a ~ ~ ~ 1 0.9
particle dust 1 0 0 1 ~ ~ ~ 0 0 0 0 1 force
execute unless score @s hpPotionCD matches 3 run return fail
tag @s add used_grand_bomb
tp @s ~ ~ ~ ~ -90
summon fireball ~1 ~2 ~ {ExplosionPower:1,Motion:[0d,-2d,0d],Tags:["del"]}
summon fireball ~-1 ~2 ~ {ExplosionPower:1,Motion:[0d,-2d,0d],Tags:["del"]}
summon fireball ~ ~2 ~1 {ExplosionPower:1,Motion:[0d,-2d,0d],Tags:["del"]}
summon fireball ~ ~2 ~-1 {ExplosionPower:1,Motion:[0d,-2d,0d],Tags:["del"]}
execute as @a[gamemode=adventure,team=!,distance=..2.6] run damage @s 0.5 indirect_magic by @e[type=drowned,limit=1,tag=grand_master,distance=..4]