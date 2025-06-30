execute if score SpectateLogDelay Data matches ..-1 run return fail
data modify storage run menu.log append from storage run log.new

scoreboard players set $this calculator -1
execute if score $signed calculator matches 1 store result score $this calculator run data get storage run log.log[0].signature

execute unless score $this calculator = $lastSeenSign calculator run function lobby:spectator/sidebar/log/reset_lines
scoreboard players add $signedLines calculator 1
execute if score $lastSeenSign calculator matches ..-1 run scoreboard players set $signedLines calculator 0
execute if score $this calculator matches -1 run scoreboard players set $lastLoggedPlayer calculator -1

execute unless data storage run menu.log[14] run return fail
execute unless score $signedLines calculator matches 9.. run return run data remove storage run menu.log[6]
 data remove storage run menu.log[7]