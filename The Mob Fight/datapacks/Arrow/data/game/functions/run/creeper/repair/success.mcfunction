tag @s add will_repair
execute if score #rx calculator matches 3.. run data modify storage run repair_check.color set value "red"
execute if score #rx calculator matches ..-2 run data modify storage run repair_check.color set value "blue"
function game:run/creeper/repair/fill with storage run repair_check