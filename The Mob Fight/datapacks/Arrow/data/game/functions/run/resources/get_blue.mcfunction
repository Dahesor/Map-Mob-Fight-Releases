execute store result score oreCount blue run execute if entity @e[type=marker,nbt={data:{from:"blue"}},tag=ore_marker]
execute if score oreCount blue matches 102.. run scoreboard players add oreWaste blue 1
execute unless score oreCount blue matches 102.. run function game:run/resources/store_blue
scoreboard players set ore_ticker blue -5