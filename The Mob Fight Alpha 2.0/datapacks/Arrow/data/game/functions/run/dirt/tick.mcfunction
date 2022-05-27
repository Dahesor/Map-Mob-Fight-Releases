scoreboard players add dirtCD red 1
scoreboard players add dirtCD blue 1
execute if entity @a[team=red,nbt={ActiveEffects:[{Id:32b}]}] if score dirtCD red matches 20.. run function game:run/dirt/red
execute if entity @a[team=blue,nbt={ActiveEffects:[{Id:32b}]}] if score dirtCD blue matches 20.. run function game:run/dirt/blue
execute if score dirtCD red > dirtTime red run function game:run/dirt/red
execute if score dirtCD blue > dirtTime blue run function game:run/dirt/blue