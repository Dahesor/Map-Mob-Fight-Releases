execute positioned 0 1 0 run summon marker ~ ~ ~ {data:{from:"blue",initialized:0b},Tags:["ore_marker"]}
execute store result score #random calculator run data get entity @e[type=marker,limit=1,sort=nearest,nbt={data:{from:"blue",initialized:0b}},tag=ore_marker] UUID[2]
scoreboard players operation #random calculator %= #10 calculator
execute if score #random calculator matches 1.. run function game:run/resources/loop_blue


data modify storage run Pos set from storage run map.ore.blue[0].Pos
data remove storage run map.ore.blue[0]
execute positioned 0 1 0 as @e[type=marker,limit=1,sort=nearest,nbt={data:{from:"blue",initialized:0b}},tag=ore_marker] run function game:run/resources/marker_self