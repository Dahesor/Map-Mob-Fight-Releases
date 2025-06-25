execute if entity @s[tag=red_crystal] run data modify entity @s BeamTarget set from storage run map.crystalPos.BeamCenter.red
execute if entity @s[tag=blue_crystal] run data modify entity @s BeamTarget set from storage run map.crystalPos.BeamCenter.blue
tag @s remove beem_lazer