execute if score SpectateLogDelay Data matches ..-1 run return fail
data modify storage run menu.log insert 6 from storage run log.new
execute if data storage run menu.log[14] run data remove storage run menu.log[14]