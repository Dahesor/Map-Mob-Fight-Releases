scoreboard players add center%side_door blue 1
execute if score center%side_door blue matches -1 run setblock -46 41 10 lever[face=wall,powered=false,facing=east]
execute if score center%side_door blue matches ..-1 run return fail
execute if score center%side_door blue matches 2 run function map:center/side_door/spawn_blue_close
execute if score center%side_door blue matches 12 as @e[type=block_display,tag=center.blue_gate] run data merge entity @s {transformation:{translation:[0f,0f,-1.99f]}}
execute if score center%side_door blue matches 12 positioned -41 44 -4 run playsound entity.minecart.inside master @a ~ ~ ~ 0.5 0.7

execute if score center%side_door blue matches 30 run fill -45 47 -4 -37 47 -5 iron_bars keep
execute if score center%side_door blue matches 50 run fill -45 46 -4 -37 46 -5 iron_bars keep
execute if score center%side_door blue matches 70 run fill -45 45 -4 -37 45 -5 iron_bars keep
execute if score center%side_door blue matches 30 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door blue matches 50 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door blue matches 70 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door blue matches 133 run stopsound @a[team=blue] master entity.minecart.inside
execute if score center%side_door blue matches 132 positioned -41 44 -4 run playsound block.iron_door.close master @a ~ ~ ~ 1 0.3
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 41.50 -3.30 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 42.80 -3.30 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 44.50 -3.30 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 41.50 -4.70 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 42.80 -4.70 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 132 run particle campfire_cosy_smoke -40.0 44.50 -4.70 0 0 0 0.03 40 normal
execute if score center%side_door blue matches 170 run kill @e[type=block_display,tag=center.blue_gate]
execute if score center%side_door blue matches 169 run fill -44 41 -4 -37 44 -5 netherite_block

execute if score center%side_door blue matches 22 run fill -44 41 -4 -44 44 -5 barrier
execute if score center%side_door blue matches 22 run fill -37 41 -4 -37 44 -5 barrier
execute if score center%side_door blue matches 52 run fill -43 41 -4 -43 44 -5 barrier
execute if score center%side_door blue matches 52 run fill -38 41 -4 -38 44 -5 barrier
execute if score center%side_door blue matches 82 run fill -42 41 -4 -42 44 -5 barrier
execute if score center%side_door blue matches 82 run fill -39 41 -4 -39 44 -5 barrier
execute if score center%side_door blue matches 112 run fill -41 41 -4 -41 44 -5 barrier
execute if score center%side_door blue matches 112 run fill -40 41 -4 -40 44 -5 barrier

execute if score center%side_door blue matches 52 run fill -44 41 -4 -44 44 -5 netherite_block
execute if score center%side_door blue matches 52 run fill -37 41 -4 -37 44 -5 netherite_block
execute if score center%side_door blue matches 82 run fill -43 41 -4 -43 44 -5 netherite_block
execute if score center%side_door blue matches 82 run fill -38 41 -4 -38 44 -5 netherite_block


execute if score center%side_door blue matches 590 run function map:center/side_door/spawn_blue_open
execute if score center%side_door blue matches 591 run fill -44 41 -4 -37 44 -5 barrier
execute if score center%side_door blue matches 591 run fill -44 41 -4 -44 44 -5 netherite_block
execute if score center%side_door blue matches 591 run fill -37 41 -4 -37 44 -5 netherite_block
execute if score center%side_door blue matches 600 as @e[type=block_display,tag=center.blue_gate] run data merge entity @s {transformation:{translation:[0.01f,0f,-2.99f]}}
execute if score center%side_door blue matches 601 positioned -41 44 -4 run playsound entity.minecart.inside master @a ~ ~ ~ 0.5 0.7
execute if score center%side_door blue matches 660 run fill -44 41 -4 -44 44 -5 barrier
execute if score center%side_door blue matches 660 run fill -37 41 -4 -37 44 -5 barrier
execute if score center%side_door blue matches 720 run fill -44 41 -4 -37 44 -5 air
execute if score center%side_door blue matches 720 positioned -41 44 -4 run playsound block.iron_door.open master @a ~ ~ ~ 1 0.3
execute if score center%side_door blue matches 730 run stopsound @a[team=blue] master entity.minecart.inside
execute if score center%side_door blue matches 740 run kill @e[type=block_display,tag=center.blue_gate]

execute if score center%side_door blue matches 630 run fill -45 45 -4 -37 45 -5 air replace iron_bars
execute if score center%side_door blue matches 650 run fill -45 46 -4 -37 46 -5 air replace iron_bars
execute if score center%side_door blue matches 670 run fill -45 47 -4 -37 47 -5 air replace iron_bars
execute if score center%side_door blue matches 630 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door blue matches 650 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door blue matches 670 positioned -41 48 -4 run playsound block.chain.place master @a ~ ~ ~ 1 0.4

execute if score center%side_door blue matches 630 run fill -41 41 -4 -41 44 -5 air
execute if score center%side_door blue matches 630 run fill -40 41 -4 -40 44 -5 air
execute if score center%side_door blue matches 660 run fill -42 41 -4 -42 44 -5 air
execute if score center%side_door blue matches 660 run fill -39 41 -4 -39 44 -5 air
execute if score center%side_door blue matches 690 run fill -43 41 -4 -43 44 -5 air
execute if score center%side_door blue matches 690 run fill -38 41 -4 -38 44 -5 air

execute if score center%side_door blue matches 720 run particle campfire_cosy_smoke -35.80 43.0 -3.0 0 0 0 0.02 12 normal
execute if score center%side_door blue matches 720 run particle campfire_cosy_smoke -35.80 43.0 -5.0 0 0 0 0.02 12 normal
execute if score center%side_door blue matches 720 run particle campfire_cosy_smoke -44.20 43.0 -3.0 0 0 0 0.02 12 normal
execute if score center%side_door blue matches 720 run particle campfire_cosy_smoke -44.20 43.0 -5.0 0 0 0 0.02 12 normal

execute if score center%side_door blue matches 770 run setblock -48 42 10 air
execute if score center%side_door blue matches 770 run scoreboard players set center%side_door blue -6000
