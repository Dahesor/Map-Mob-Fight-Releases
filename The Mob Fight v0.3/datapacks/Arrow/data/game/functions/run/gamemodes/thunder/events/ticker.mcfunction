scoreboard players add #thunder_c calculator 2
execute if score destroyMode Data matches 1 run scoreboard players add #thunder_c calculator 1
execute if score crazyMode Data matches 1 run scoreboard players add #thunder_c calculator 20

summon marker 0 1 0 {Tags:["thunderRANDOM"]}
execute store result score #thunder_rolled calculator run data get entity @e[type=marker,tag=thunderRANDOM,limit=1] UUID[0]
kill @e[type=marker,tag=thunderRANDOM]

scoreboard players operation #thunder_rolled calculator %= THUNDER.flashMaxChance Options
execute if score #thunder_rolled calculator <= #thunder_c calculator run function game:run/gamemodes/thunder/events/flash


execute if score flare red matches 1 as @a[team=red] run function game:run/gamemodes/thunder/visible/dark_shift
execute if score flare blue matches 1 as @a[team=blue] run function game:run/gamemodes/thunder/visible/dark_shift
execute if score flare red matches 1.. run scoreboard players remove flare red 1
execute if score flare blue matches 1.. run scoreboard players remove flare blue 1


execute if score flare red matches ..18 run kill @e[type=marker,tag=THUNDER.flare,nbt={data:{team:"red"}}]
execute if score flare blue matches ..18 run kill @e[type=marker,tag=THUNDER.flare,nbt={data:{team:"blue"}}]
