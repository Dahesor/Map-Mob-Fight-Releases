execute on vehicle run return fail
particle block anvil ~ ~1.8 ~ 0.5 0.5 0.5 0.2 20 normal @a
tag @s add temp.anvil.mount
summon item ~ ~-1 ~ {Age:5960,Item:{id:"golden_axe",Count:1b},PickupDelay:1000s,Tags:["temp.anvil.mount","del"],Motion:[0.0d,-1.0d,0.0d]}
execute positioned ~ ~-1 ~ as @e[type=item,tag=temp.anvil.mount,limit=1,sort=nearest,distance=..2] run function game:player/warped_stick/anvil/mount

summon item ~ ~-1 ~ {Age:5960,Item:{id:"barrier",Count:1b,tag:{CustomModelData:50}},PickupDelay:1000s,Tags:["temp.anvil.mount","del"],Motion:[0.0d,-1.0d,0.0d]}

function game:player/warped_stick/anvil/top
tag @e[type=item,tag=temp.anvil.mount,limit=1,sort=nearest,distance=..10] remove temp.anvil.mount

tag @s remove temp.anvil.mount
effect clear @s levitation