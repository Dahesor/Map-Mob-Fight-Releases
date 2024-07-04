summon marker 0 4 0 {Tags:["random_dirt"]}
execute store result score #randomd calculator run random value 0..10
execute if score #randomd calculator matches 0 run data modify storage run dirtRun set from storage run map.dirt.red[0]
execute if score #randomd calculator matches 1 run data modify storage run dirtRun set from storage run map.dirt.red[1]
execute if score #randomd calculator matches 2 run data modify storage run dirtRun set from storage run map.dirt.red[2]
execute if score #randomd calculator matches 3 run data modify storage run dirtRun set from storage run map.dirt.red[3]
execute if score #randomd calculator matches 4 run data modify storage run dirtRun set from storage run map.dirt.red[4]
execute if score #randomd calculator matches 5 run data modify storage run dirtRun set from storage run map.dirt.red[5]
execute if score #randomd calculator matches 6 run data modify storage run dirtRun set from storage run map.dirt.red[6]
execute if score #randomd calculator matches 7 run data modify storage run dirtRun set from storage run map.dirt.red[7]
execute if score #randomd calculator matches 8 run data modify storage run dirtRun set from storage run map.dirt.red[8]
execute if score #randomd calculator matches 9 run data modify storage run dirtRun set from storage run map.dirt.red[9]
execute if score #randomd calculator matches 10 run data modify storage run dirtRun set from storage run map.dirt.red[10]
execute if score #randomd calculator matches 0 run data remove storage run map.dirt.red[0]
execute if score #randomd calculator matches 1 run data remove storage run map.dirt.red[1]
execute if score #randomd calculator matches 2 run data remove storage run map.dirt.red[2]
execute if score #randomd calculator matches 3 run data remove storage run map.dirt.red[3]
execute if score #randomd calculator matches 4 run data remove storage run map.dirt.red[4]
execute if score #randomd calculator matches 5 run data remove storage run map.dirt.red[5]
execute if score #randomd calculator matches 6 run data remove storage run map.dirt.red[6]
execute if score #randomd calculator matches 7 run data remove storage run map.dirt.red[7]
execute if score #randomd calculator matches 8 run data remove storage run map.dirt.red[8]
execute if score #randomd calculator matches 9 run data remove storage run map.dirt.red[9]
execute if score #randomd calculator matches 10 run data remove storage run map.dirt.red[10]
data modify entity @e[type=marker,tag=random_dirt,limit=1] Pos set from storage run dirtRun
execute at @e[type=marker,tag=random_dirt,limit=1] run setblock ~ ~1 ~ coarse_dirt
execute at @e[type=marker,tag=random_dirt,limit=1] run playsound block.gravel.place block @a ~ ~ ~
execute at @e[type=marker,tag=random_dirt,limit=1] run particle poof ~ ~1 ~ 0.5 0.5 0.5 0.05 8 normal @a
execute at @e[type=marker,tag=random_dirt,limit=1] as @e[type=end_crystal,limit=1,sort=nearest,tag=red_crystal] run function game:run/dirt/lazer
kill @e[type=marker,tag=random_dirt,limit=1]
data modify storage run map.dirt.red append from storage run dirtRun
scoreboard players set dirtCD red -3
