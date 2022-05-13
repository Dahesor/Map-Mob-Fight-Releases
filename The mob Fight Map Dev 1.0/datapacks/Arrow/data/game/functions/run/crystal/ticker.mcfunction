scoreboard players remove @e[type=end_crystal,tag=red_crystal] genericCD 1
scoreboard players remove @e[type=end_crystal,tag=blue_crystal] genericCD 1
execute as @e[type=end_crystal,tag=red_crystal,scores={genericCD=..0}] run function game:run/crystal/self
execute as @e[type=end_crystal,tag=blue_crystal,scores={genericCD=..0}] run function game:run/crystal/self