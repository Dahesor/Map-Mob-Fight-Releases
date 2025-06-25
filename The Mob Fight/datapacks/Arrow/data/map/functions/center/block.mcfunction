execute if data storage run map{id:4b} if block ~ ~ ~ #map:center/break_block run summon marker ~ ~ ~ {Tags:["repair"]}
execute if data storage run map{id:4b} if block ~ ~ ~ #map:center/clear_block run setblock ~ ~ ~ air replace
execute as @e[type=marker,tag=repair] at @s run function game:run/creeper/repair/mark
