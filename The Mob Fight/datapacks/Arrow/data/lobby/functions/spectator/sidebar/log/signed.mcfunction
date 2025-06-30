execute store result score $this calculator run function lobby:spectator/sidebar/log/get_id
execute unless score $this calculator = $lastLoggedPlayer calculator run function lobby:spectator/sidebar/log/new_sign
scoreboard players operation $lastLoggedPlayer calculator = $this calculator
data modify storage run log.log[-1].time set value 999999999
data modify storage run log.log[-1].signature set value 0
execute store result storage run log.log[-1].signature int 1 run scoreboard players get $this calculator
execute store result storage run log.log[-1].time int 1 run scoreboard players get $gametime Data