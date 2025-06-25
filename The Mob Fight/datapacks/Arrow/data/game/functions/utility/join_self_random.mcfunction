execute store result score #red calculator run execute if entity @a[team=red]
execute store result score #blue calculator run execute if entity @a[team=blue]
execute if score #red calculator > #blue calculator run team join blue @s
execute if score #blue calculator > #red calculator run team join red @s
execute if score #blue calculator = #red calculator store result score #witch calculator run random value 1..2
execute if score #blue calculator = #red calculator if score #witch calculator matches 1 run team join red
execute if score #blue calculator = #red calculator unless score #witch calculator matches 1 run team join blue
function game:utility/join_self