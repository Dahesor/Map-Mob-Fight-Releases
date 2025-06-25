data modify storage run repair append value {x:0,y:0,z:0}
execute if predicate map:in_blue run data modify storage run repair[-1].side set value "blue"
execute if predicate map:in_red run data modify storage run repair[-1].side set value "red"
execute store result storage run repair[-1].x int 1 run data get entity @s Pos[0]
execute store result storage run repair[-1].y int 1 run data get entity @s Pos[1]
execute store result storage run repair[-1].z int 1 run data get entity @s Pos[2]
execute unless data storage run repair[-1].side run data remove storage run repair[-1]

kill @s