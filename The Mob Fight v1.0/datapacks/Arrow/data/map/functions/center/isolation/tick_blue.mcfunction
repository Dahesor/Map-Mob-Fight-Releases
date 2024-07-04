scoreboard players add center%isolation blue 1
execute if score center%isolation blue matches -1 run setblock -46 41 12 lever[face=wall,powered=false,facing=east]
execute if score center%isolation blue matches 15 run fill -43 43 8 -38 43 8 chain[axis=y]
execute if score center%isolation blue matches 30 run fill -43 42 8 -38 42 8 chain[axis=y]
execute if score center%isolation blue matches 45 run fill -43 41 8 -38 41 8 chain[axis=y]
execute if score center%isolation blue matches 15 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 30 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 45 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 80 run fill -43 41 8 -38 41 8 reinforced_deepslate
execute if score center%isolation blue matches 110 run fill -43 42 8 -38 42 8 reinforced_deepslate
execute if score center%isolation blue matches 140 run fill -43 43 8 -38 43 8 reinforced_deepslate
execute if score center%isolation blue matches 170 run fill -43 44 8 -38 44 8 reinforced_deepslate
execute if score center%isolation blue matches 80 run playsound block.piston.extend master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 110 run playsound block.piston.extend master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 140 run playsound block.piston.extend master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 170 run playsound block.piston.extend master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 1200 run fill -43 44 8 -38 44 8 chain[axis=y]
execute if score center%isolation blue matches 1230 run fill -43 43 8 -38 43 8 chain[axis=y]
execute if score center%isolation blue matches 1260 run fill -43 42 8 -38 42 8 chain[axis=y]
execute if score center%isolation blue matches 1290 run fill -43 41 8 -38 41 8 chain[axis=y]
execute if score center%isolation blue matches 1320 run fill -43 41 8 -38 41 8 air
execute if score center%isolation blue matches 1335 run fill -43 42 8 -38 42 8 air
execute if score center%isolation blue matches 1350 run fill -43 43 8 -38 43 8 air
execute if score center%isolation blue matches 1200 run playsound block.piston.contract master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 1230 run playsound block.piston.contract master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 1260 run playsound block.piston.contract master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 1290 run playsound block.piston.contract master @a -40.47 41.59 8.59 1 0.3
execute if score center%isolation blue matches 1320 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 1335 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 1350 run playsound minecraft:block.chain.place master @a -40.47 44.59 8.59 1 0.6
execute if score center%isolation blue matches 1350 run setblock -48 42 12 air


execute if score center%isolation blue matches 10..40 if score #loop_10 calculator matches 0 run playsound block.piston.extend master @a -40 44 33 1.7 1.8
execute if score center%isolation blue matches 13 run fill -40 43 32 -42 43 32 tinted_glass
execute if score center%isolation blue matches 26 run fill -40 42 32 -42 42 32 tinted_glass
execute if score center%isolation blue matches 39 run fill -40 41 32 -42 41 32 tinted_glass

execute if score center%isolation blue matches 1210..1250 if score #loop_10 calculator matches 0 run playsound block.piston.contract master @a -40 44 33 1.7 1.8
execute if score center%isolation blue matches 1210 run fill -40 41 32 -42 41 32 air
execute if score center%isolation blue matches 1223 run fill -40 42 32 -42 42 32 air
execute if score center%isolation blue matches 1246 run fill -40 43 32 -42 43 32 air
execute if score center%isolation blue matches 1350 run kill @e[type=iron_golem,nbt={Tags:["center%iron_golem"]},team=blue]
execute if score center%isolation blue matches 1350 run scoreboard players set center%isolation blue -6000