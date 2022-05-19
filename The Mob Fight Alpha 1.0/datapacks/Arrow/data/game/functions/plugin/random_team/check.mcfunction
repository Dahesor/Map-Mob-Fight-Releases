execute store result score #red calculator run execute if entity @a[team=red]
execute store result score #blue calculator run execute if entity @a[team=blue]
execute if score #red calculator > #blue calculator run function game:plugin/random_team/loop_blue
execute if score #blue calculator > #red calculator run function game:plugin/random_team/loop_red
execute if score #blue calculator = #red calculator run function game:plugin/random_team/loop_random