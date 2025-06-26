execute as @s[predicate=map:middle_area] run function game:plugin/arrow_mid
execute if entity @s[tag=actived] run return fail
tag @s add actived
tag @s[predicate=map:in_blue] add blue_arrow
tag @s[predicate=map:in_red] add red_arrow