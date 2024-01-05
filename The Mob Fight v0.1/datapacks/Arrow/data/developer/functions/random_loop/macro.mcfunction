#$tellraw @a {"text":"$(max)"}

$execute store result storage run macro2.insert int 1 run random value 1..$(max)
function developer:random_loop/insert with storage run macro2
data remove storage run PosRecord[0]