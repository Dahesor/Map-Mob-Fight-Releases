execute if predicate map:middle_area run return run kill

execute if entity @s[tag=ench_resloved] run return 1

tag @s add ench_resloved
execute unless data entity @s {pickup:1b} run return fail
execute if predicate map:in_blue if score power blue matches 1 run return run data modify entity @s damage set value 2.5d
execute if predicate map:in_blue if score power blue matches 2 run return run data modify entity @s damage set value 3.0d
execute if predicate map:in_red if score power red matches 1 run return run data modify entity @s damage set value 2.5d
execute if predicate map:in_red if score power red matches 2 run return run data modify entity @s damage set value 3.0d