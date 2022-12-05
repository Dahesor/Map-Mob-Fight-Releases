summon marker ~ ~ ~ {Tags:["949761_4871","jhvjhb3y2n"]}
summon marker ~ ~ ~ {Tags:["949761_4872","jhvjhb3y2n"]}
execute as @e[type=marker,tag=jhvjhb3y2n,sort=random,limit=1] run function game:plugin/random_team/loop_self
kill @e[type=marker,tag=jhvjhb3y2n]