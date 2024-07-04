execute positioned 0 1 0 run summon marker ~ ~ ~ {data:{from:"red",initialized:0b},Tags:["ore_marker"]}
execute store result score #random calculator run random value 0..9
execute if score #random calculator matches 1.. run function game:run/resources/loop_red


data modify storage run Pos set from storage run map.ore.red[0].Pos
data remove storage run map.ore.red[0]
execute positioned 0 1 0 as @e[type=marker,limit=1,sort=nearest,nbt={data:{from:"red",initialized:0b}},tag=ore_marker] run function game:run/resources/marker_self

scoreboard players set ore_ticker red -20