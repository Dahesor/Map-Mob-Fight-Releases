execute store result score oreCount red run execute if entity @e[type=marker,nbt={data:{from:"red"}},tag=ore_marker]
execute unless score oreCount red matches 102.. run function game:run/resources/store_red
execute unless score oreCount red matches 102.. run scoreboard players set ore_ticker red -20
execute if score oreCount red matches ..10 run scoreboard players set ore_ticker red 88
execute if score oreCount red matches 11..20 run scoreboard players set ore_ticker red 72
execute if score oreCount red matches 21..30 run scoreboard players set ore_ticker red 50
execute if score oreCount red matches 31..40 run scoreboard players set ore_ticker red 32
execute if score oreCount red matches 41..50 run scoreboard players set ore_ticker red 20