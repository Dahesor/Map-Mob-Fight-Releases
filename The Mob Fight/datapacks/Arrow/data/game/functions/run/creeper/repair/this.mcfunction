data modify storage run repair_check set value {x:0,y:0,z:-1,color:"none"}
scoreboard players operation #rx calculator = #x calculator
scoreboard players operation #ry calculator = #y calculator
scoreboard players operation #rz calculator = #z calculator
execute store result storage run repair_check.x int 1 run scoreboard players operation #rx calculator += #dx calculator
execute store result storage run repair_check.y int 1 run scoreboard players operation #ry calculator += #dy calculator
execute store result storage run repair_check.z int 1 run scoreboard players operation #rz calculator += #dz calculator
function game:run/creeper/repair/macro with storage run repair_check