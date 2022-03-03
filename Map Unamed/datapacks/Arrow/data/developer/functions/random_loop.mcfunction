schedule clear lobby:lobby_spinner/diamond
schedule function lobby:lobby_spinner/redstone 1t append
summon marker 1 1 1 {data:{rrAaskagF93da:1b}}
execute store result score #random calculator run data get entity @e[type=marker,nbt={data:{rrAaskagF93da:1b}},limit=1] UUID[1]
scoreboard players operation #random calculator %= #10 calculator
execute if score #random calculator matches 0 run data modify storage run holder set from storage run PosRecord[0]
execute if score #random calculator matches 0 run data remove storage run PosRecord[0]
execute if score #random calculator matches 1 run data modify storage run holder set from storage run PosRecord[1]
execute if score #random calculator matches 1 run data remove storage run PosRecord[1]
execute if score #random calculator matches 2 run data modify storage run holder set from storage run PosRecord[2]
execute if score #random calculator matches 2 run data remove storage run PosRecord[2]
execute if score #random calculator matches 3 run data modify storage run holder set from storage run PosRecord[3]
execute if score #random calculator matches 3 run data remove storage run PosRecord[3]
execute if score #random calculator matches 4 run data modify storage run holder set from storage run PosRecord[4]
execute if score #random calculator matches 4 run data remove storage run PosRecord[4]
execute if score #random calculator matches 5 run data modify storage run holder set from storage run PosRecord[5]
execute if score #random calculator matches 5 run data remove storage run PosRecord[5]
execute if score #random calculator matches 6 run data modify storage run holder set from storage run PosRecord[6]
execute if score #random calculator matches 6 run data remove storage run PosRecord[6]
execute if score #random calculator matches 7 run data modify storage run holder set from storage run PosRecord[7]
execute if score #random calculator matches 7 run data remove storage run PosRecord[7]
execute if score #random calculator matches 8 run data modify storage run holder set from storage run PosRecord[8]
execute if score #random calculator matches 8 run data remove storage run PosRecord[8]
execute if score #random calculator matches 9 run data modify storage run holder set from storage run PosRecord[9]
execute if score #random calculator matches 9 run data remove storage run PosRecord[9]
execute if score #random calculator matches 10 run data modify storage run holder set from storage run PosRecord[10]
execute if score #random calculator matches 10 run data remove storage run PosRecord[10]
scoreboard players add Count calculator 1
data modify storage run PosRecord append from storage run holder
kill @e[type=marker,nbt={data:{rrAaskagF93da:1b}}]
execute if score #random calculator matches 0 run say §b[Random SSGU]: §aMoved §f[§60§f]
execute if score #random calculator matches 1 run say §b[Random SSGU]: §aMoved §f[§61§f]
execute if score #random calculator matches 2 run say §b[Random SSGU]: §aMoved §f[§62§f]
execute if score #random calculator matches 3 run say §b[Random SSGU]: §aMoved §f[§63§f]
execute if score #random calculator matches 4 run say §b[Random SSGU]: §aMoved §f[§64§f]
execute if score #random calculator matches 5 run say §b[Random SSGU]: §aMoved §f[§65§f]
execute if score #random calculator matches 6 run say §b[Random SSGU]: §aMoved §f[§66§f]
execute if score #random calculator matches 7 run say §b[Random SSGU]: §aMoved §f[§67§f]
execute if score #random calculator matches 8 run say §b[Random SSGU]: §aMoved §f[§68§f]
execute if score #random calculator matches 9 run say §b[Random SSGU]: §aMoved §f[§69§f]
execute if score #random calculator matches 10 run say §b[Random SSGU]: §aMoved §f[§610§f]
schedule function lobby:lobby_spinner/diamond 3t
schedule function developer:random_loop 1t