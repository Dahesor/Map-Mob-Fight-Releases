#define tag will_repair

execute store result score #x calculator run data get entity @s Pos[0]
execute store result score #y calculator run data get entity @s Pos[1]
execute store result score #z calculator run data get entity @s Pos[2]



scoreboard players set #dz calculator -2
function game:run/creeper/repair/dy

scoreboard players set #dz calculator -1
function game:run/creeper/repair/dy

scoreboard players set #dz calculator 0
function game:run/creeper/repair/dy

scoreboard players set #dz calculator 1
function game:run/creeper/repair/dy
