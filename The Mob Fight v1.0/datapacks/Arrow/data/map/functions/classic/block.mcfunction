execute if data storage run map{id:0b} if block ~ ~ ~ #map:classic/break_block run summon marker ~ ~ ~ {Tags:["repair"]}
execute if data storage run map{id:0b} if block ~ ~ ~ #map:classic/clear_block run setblock ~ ~ ~ air replace
execute as @e[type=marker,tag=repair] at @s run function game:run/creeper/repair/mark
