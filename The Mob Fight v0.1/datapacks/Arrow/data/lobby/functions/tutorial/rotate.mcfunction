data modify storage lobby:data tutorial append from storage lobby:data run_tut[0]
data remove storage lobby:data run_tut[0]

function lobby:tutorial/macro with storage lobby:data tutorial[-1].data

execute store result score #temp2 calculator run data get storage lobby:data tutorial[-1].data.time 1
scoreboard players add #temp2 calculator 1
execute store result storage lobby:data tutorial[-1].data.time int 1 run scoreboard players get #temp2 calculator

execute if data storage lobby:data run_tut[0] run function lobby:tutorial/rotate

