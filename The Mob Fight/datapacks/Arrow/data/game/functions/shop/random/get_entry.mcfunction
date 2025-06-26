execute store result score $index calculator run random value 0..2147483640
execute store result score $max calculator run data get storage run BackupRandom
scoreboard players operation $index calculator %= $max calculator
data modify storage run i set value {i:0}
execute store result storage run i.i int 1 run scoreboard players get $index calculator
function game:shop/random/__get_index with storage run i