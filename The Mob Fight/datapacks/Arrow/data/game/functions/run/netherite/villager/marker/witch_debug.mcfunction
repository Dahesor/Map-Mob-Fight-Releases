scoreboard players set $body calculator 0
execute store result score $body calculator run function game:run/netherite/villager/marker/__contact_body with entity @s data
execute if score $body calculator matches 1.. run return run function game:run/netherite/villager/marker/dead
function game:run/netherite/villager/marker/reset_villager