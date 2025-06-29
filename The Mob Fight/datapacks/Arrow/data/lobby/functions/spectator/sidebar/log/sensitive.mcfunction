scoreboard players set $lastLoggedPlayer calculator -1
data modify storage run log.log[-1].time set value 999999999
execute store result storage run log.log[-1].time int 1 run scoreboard players get $gametime Data