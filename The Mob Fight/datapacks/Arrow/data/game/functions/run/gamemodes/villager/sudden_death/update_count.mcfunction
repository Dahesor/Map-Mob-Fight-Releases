execute store result score VILLAGER.super_villager red run execute if entity @e[type=marker,tag=villager_red,tag=super_villager]
execute store result score VILLAGER.super_villager blue run execute if entity @e[type=marker,tag=villager_blue,tag=super_villager]

execute if data storage run almost_win{red:0b} if score VILLAGER.super_villager blue matches 1 run function game:utility/over_half/blue_losing
execute if data storage run almost_win{blue:0b} if score VILLAGER.super_villager red matches 1 run function game:utility/over_half/red_losing