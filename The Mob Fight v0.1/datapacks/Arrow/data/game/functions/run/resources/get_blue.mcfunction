execute store result score oreCount blue run execute if entity @e[type=marker,nbt={data:{from:"blue"}},tag=ore_marker]
execute unless score oreCount blue matches 102.. run function game:run/resources/store_blue
execute unless score oreCount blue matches 102.. run scoreboard players set ore_ticker blue -20
execute if score oreCount blue matches ..10 run scoreboard players set ore_ticker blue 88
execute if score oreCount blue matches 11..20 run scoreboard players set ore_ticker blue 72
execute if score oreCount blue matches 21..30 run scoreboard players set ore_ticker blue 50
execute if score oreCount blue matches 31..40 run scoreboard players set ore_ticker blue 32
execute if score oreCount blue matches 41..50 run scoreboard players set ore_ticker blue 20