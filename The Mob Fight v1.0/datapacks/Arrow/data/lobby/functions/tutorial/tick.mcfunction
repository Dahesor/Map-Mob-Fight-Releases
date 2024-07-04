data modify storage lobby:data run_tut set from storage lobby:data tutorial
data remove storage lobby:data tutorial
execute if data storage lobby:data run_tut[0] run function lobby:tutorial/rotate
