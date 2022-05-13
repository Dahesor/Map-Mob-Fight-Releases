scoreboard players add dirtCD red 1
scoreboard players add dirtCD blue 1
execute if score dirtCD red > dirtTime red run function game:run/dirt/red
execute if score dirtCD blue > dirtTime blue run function game:run/dirt/blue