scoreboard players set #io calculator 0

execute store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~1 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~-4 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~-1 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos

execute as @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] at @s run tp @s ~ ~-1 ~
execute unless score #io calculator matches 1.. store result score #io calculator at @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] if block ~ ~ ~ #game:summon_free run data modify entity @s data.spawn.pos append from entity @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest] Pos
kill @e[type=marker,tag=spawnPosChecker,limit=1,sort=nearest]