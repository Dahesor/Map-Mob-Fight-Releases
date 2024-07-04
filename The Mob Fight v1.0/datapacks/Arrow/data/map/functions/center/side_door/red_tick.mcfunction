scoreboard players add center%side_door red 1
execute if score center%side_door red matches -1 run setblock 46 41 -11 lever[face=wall,powered=false,facing=west]
execute if score center%side_door red matches ..-1 run return fail
execute if score center%side_door red matches 2 run function map:center/side_door/spawn_red_close
execute if score center%side_door red matches 12 as @e[type=block_display,tag=center.red_gate] run data merge entity @s {transformation:{translation:[0f,0f,1.99f]}}
execute if score center%side_door red matches 12 positioned 41 44 3 run playsound entity.minecart.inside master @a ~ ~ ~ 0.5 0.7

execute if score center%side_door red matches 30 run fill 45 47 3 37 47 4 iron_bars keep
execute if score center%side_door red matches 50 run fill 45 46 3 37 46 4 iron_bars keep
execute if score center%side_door red matches 70 run fill 45 45 3 37 45 4 iron_bars keep
execute if score center%side_door red matches 30 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door red matches 50 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door red matches 70 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door red matches 133 run stopsound @a[team=red] master entity.minecart.inside
execute if score center%side_door red matches 132 positioned 41 44 3 run playsound block.iron_door.close master @a ~ ~ ~ 1 0.3
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 41.50 3.30 0 0 0 0.03 40 normal
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 42.80 3.30 0 0 0 0.03 40 normal
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 44.50 3.30 0 0 0 0.03 40 normal
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 41.50 4.70 0 0 0 0.03 40 normal
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 42.80 4.70 0 0 0 0.03 40 normal
execute if score center%side_door red matches 132 run particle campfire_cosy_smoke 41.0 44.50 4.70 0 0 0 0.03 40 normal
execute if score center%side_door red matches 170 run kill @e[type=block_display,tag=center.red_gate]
execute if score center%side_door red matches 169 run fill 44 41 3 37 44 4 netherite_block

execute if score center%side_door red matches 22 run fill 44 41 3 44 44 4 barrier
execute if score center%side_door red matches 22 run fill 37 41 3 37 44 4 barrier
execute if score center%side_door red matches 52 run fill 43 41 3 43 44 4 barrier
execute if score center%side_door red matches 52 run fill 38 41 3 38 44 4 barrier
execute if score center%side_door red matches 82 run fill 42 41 3 42 44 4 barrier
execute if score center%side_door red matches 82 run fill 39 41 3 39 44 4 barrier
execute if score center%side_door red matches 112 run fill 41 41 3 41 44 4 barrier
execute if score center%side_door red matches 112 run fill 40 41 3 40 44 4 barrier

execute if score center%side_door red matches 52 run fill 44 41 3 44 44 4 netherite_block
execute if score center%side_door red matches 52 run fill 37 41 3 37 44 4 netherite_block
execute if score center%side_door red matches 82 run fill 43 41 3 43 44 4 netherite_block
execute if score center%side_door red matches 82 run fill 38 41 3 38 44 4 netherite_block


execute if score center%side_door red matches 590 run function map:center/side_door/spawn_red_open
execute if score center%side_door red matches 591 run fill 44 41 3 37 44 4 barrier
execute if score center%side_door red matches 591 run fill 44 41 3 44 44 4 netherite_block
execute if score center%side_door red matches 591 run fill 37 41 3 37 44 4 netherite_block
execute if score center%side_door red matches 600 as @e[type=block_display,tag=center.red_gate] run data merge entity @s {transformation:{translation:[0.01f,0f,2.99f]}}
execute if score center%side_door red matches 601 positioned 41 44 3 run playsound entity.minecart.inside master @a ~ ~ ~ 0.5 0.7
execute if score center%side_door red matches 660 run fill 44 41 3 44 44 4 barrier
execute if score center%side_door red matches 660 run fill 37 41 3 37 44 4 barrier
execute if score center%side_door red matches 720 run fill 44 41 3 37 44 4 air
execute if score center%side_door red matches 720 positioned 41 44 3 run playsound block.iron_door.open master @a ~ ~ ~ 1 0.3
execute if score center%side_door red matches 730 run stopsound @a[team=red] master entity.minecart.inside
execute if score center%side_door red matches 740 run kill @e[type=block_display,tag=center.red_gate]

execute if score center%side_door red matches 630 run fill 45 45 3 37 45 4 air replace iron_bars
execute if score center%side_door red matches 650 run fill 45 46 3 37 46 4 air replace iron_bars
execute if score center%side_door red matches 670 run fill 45 47 3 37 47 4 air replace iron_bars
execute if score center%side_door red matches 630 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door red matches 650 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4
execute if score center%side_door red matches 670 positioned 41 48 3 run playsound block.chain.place master @a ~ ~ ~ 1 0.4

execute if score center%side_door red matches 630 run fill 41 41 3 41 44 4 air
execute if score center%side_door red matches 630 run fill 40 41 3 40 44 4 air
execute if score center%side_door red matches 660 run fill 42 41 3 42 44 4 air
execute if score center%side_door red matches 660 run fill 39 41 3 39 44 4 air
execute if score center%side_door red matches 690 run fill 43 41 3 43 44 4 air
execute if score center%side_door red matches 690 run fill 38 41 3 38 44 4 air

execute if score center%side_door red matches 720 run particle campfire_cosy_smoke 36.80 43.0 3.0 0 0 0 0.02 12 normal
execute if score center%side_door red matches 720 run particle campfire_cosy_smoke 36.80 43.0 5.0 0 0 0 0.02 12 normal
execute if score center%side_door red matches 720 run particle campfire_cosy_smoke 45.20 43.0 3.0 0 0 0 0.02 12 normal
execute if score center%side_door red matches 720 run particle campfire_cosy_smoke 45.20 43.0 5.0 0 0 0 0.02 12 normal

execute if score center%side_door red matches 770 run setblock 48 42 -11 air
execute if score center%side_door red matches 770 run scoreboard players set center%side_door red -6000
