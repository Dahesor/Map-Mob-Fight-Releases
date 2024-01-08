scoreboard players set Count Data 0
data merge storage developer:run {macro:{max:0},macro2:{insert:0}}
execute store result storage developer:run macro.max int 1 run data get storage run PosRecord
tellraw @a {"nbt":"macro.max","storage": "run"}
function developer:random_loop/main