scoreboard players add center%isolation red 1
execute if score center%isolation red matches -1 run setblock 46 41 -13 lever[face=wall,powered=false,facing=west]
execute if score center%isolation red matches 15 run fill 43 43 -9 38 43 -9 chain[axis=y]
execute if score center%isolation red matches 30 run fill 43 42 -9 38 42 -9 chain[axis=y]
execute if score center%isolation red matches 45 run fill 43 41 -9 38 41 -9 chain[axis=y]
execute if score center%isolation red matches 15 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 30 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 45 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 80 run fill 43 41 -9 38 41 -9 reinforced_deepslate
execute if score center%isolation red matches 110 run fill 43 42 -9 38 42 -9 reinforced_deepslate
execute if score center%isolation red matches 140 run fill 43 43 -9 38 43 -9 reinforced_deepslate
execute if score center%isolation red matches 170 run fill 43 44 -9 38 44 -9 reinforced_deepslate
execute if score center%isolation red matches 80 run playsound block.piston.extend master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 110 run playsound block.piston.extend master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 140 run playsound block.piston.extend master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 170 run playsound block.piston.extend master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 1200 run fill 43 44 -9 38 44 -9 chain[axis=y]
execute if score center%isolation red matches 1230 run fill 43 43 -9 38 43 -9 chain[axis=y]
execute if score center%isolation red matches 1260 run fill 43 42 -9 38 42 -9 chain[axis=y]
execute if score center%isolation red matches 1290 run fill 43 41 -9 38 41 -9 chain[axis=y]
execute if score center%isolation red matches 1320 run fill 43 41 -9 38 41 -9 air
execute if score center%isolation red matches 1335 run fill 43 42 -9 38 42 -9 air
execute if score center%isolation red matches 1350 run fill 43 43 -9 38 43 -9 air
execute if score center%isolation red matches 1200 run playsound block.piston.contract master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 1230 run playsound block.piston.contract master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 1260 run playsound block.piston.contract master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 1290 run playsound block.piston.contract master @a 41.47 41.59 -8.59 1 0.3
execute if score center%isolation red matches 1320 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 1335 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 1350 run playsound minecraft:block.chain.place master @a 41.47 44.59 -8.59 1 0.6
execute if score center%isolation red matches 1350 run setblock 48 42 -13 air


execute if score center%isolation red matches 10..40 if score #loop_10 calculator matches 0 run playsound block.piston.extend master @a 41 44 -33 1.7 1.8
execute if score center%isolation red matches 13 run fill 40 43 -33 42 43 -33 tinted_glass
execute if score center%isolation red matches 26 run fill 40 42 -33 42 42 -33 tinted_glass
execute if score center%isolation red matches 39 run fill 40 41 -33 42 41 -33 tinted_glass

execute if score center%isolation red matches 1210..1250 if score #loop_10 calculator matches 0 run playsound block.piston.contract master @a 41 44 -33 1.7 1.8
execute if score center%isolation red matches 1210 run fill 40 41 -33 42 41 -33 air
execute if score center%isolation red matches 1223 run fill 40 42 -33 42 42 -33 air
execute if score center%isolation red matches 1246 run fill 40 43 -33 42 43 -33 air
execute if score center%isolation red matches 1350 run kill @e[type=iron_golem,nbt={Tags:["center%iron_golem"]},team=red]
execute if score center%isolation red matches 1350 run scoreboard players set center%isolation red -6000