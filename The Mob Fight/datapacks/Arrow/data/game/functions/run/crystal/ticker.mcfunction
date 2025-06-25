execute if score GameLength Data matches 3600.. run scoreboard players remove @e[type=end_crystal,tag=red_crystal] genericCD 1
execute if score GameLength Data matches 3600.. run scoreboard players remove @e[type=end_crystal,tag=blue_crystal] genericCD 1
execute as @e[type=end_crystal,tag=red_crystal,scores={genericCD=..0}] run function game:run/crystal/self
execute as @e[type=end_crystal,tag=blue_crystal,scores={genericCD=..0}] run function game:run/crystal/self