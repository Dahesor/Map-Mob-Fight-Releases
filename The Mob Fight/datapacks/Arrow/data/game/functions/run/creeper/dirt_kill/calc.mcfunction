execute store result score $seg calculator run data get entity @s Item.Count
execute if predicate map:in_blue run scoreboard players operation dirt blue -= $seg calculator
execute if predicate map:in_blue run scoreboard players operation dirt.hold blue -= $seg calculator
execute if predicate map:in_red run scoreboard players operation dirt red -= $seg calculator
execute if predicate map:in_red run scoreboard players operation dirt.hold red -= $seg calculator


kill