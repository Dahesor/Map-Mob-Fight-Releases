clear @a #game:clear
kill @e[type=item,nbt={Item:{tag:{isConstant:1b}}}]

execute as @a[scores={Death=1..}] run function game:death/self
execute as @a run function game:player/self
function game:run/hint/main
function game:run/resources/ticker
kill @e[type=#arrows,nbt={inGround:1b,CustomPotionEffects:[{}]},tag=!actived]
tag @e[type=#arrows,nbt={CustomPotionEffects:[{}]},predicate=map:middle_area] add actived
execute if score red Data >= TargetScore Options unless score blue Data >= TargetScore options run function game:end/red_win
execute if score blue Data >= TargetScore Options unless score red Data >= TargetScore options run function game:end/blue_win
execute if score red Data >= TargetScore Options if score blue Data >= TargetScore options run function game:end/draw_check

execute if score #loop_20 calculator matches 10 run function game:run/second

#scoreboard players add GameLength Data 1
execute if score GameLength Data >= MaxGameLength Options run function game:end/draw_check

