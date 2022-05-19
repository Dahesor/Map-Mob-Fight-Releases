summon marker ~ ~ ~ {Tags:["949761_4871","jhvjhb3y2n"]}
summon marker ~ ~ ~ {Tags:["949761_4872","jhvjhb3y2n"]}
execute as @e[type=marker,tag=jhvjhb3y2n,sort=random,limit=1] if entity @s[tag=949761_4871] run function game:plugin/random_team/loop_blue
execute as @e[type=marker,tag=jhvjhb3y2n,sort=random,limit=1] if entity @s[tag=949761_4872] run function game:plugin/random_team/loop_red
kill @e[type=marker,tag=jhvjhb3y2n]