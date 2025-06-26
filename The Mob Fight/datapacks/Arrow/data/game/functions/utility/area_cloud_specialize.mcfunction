execute if entity @s[nbt={effects:[{id:"minecraft:dolphins_grace",amplifier:0b}]}] at @s run function game:run/creeper/cloud_self
execute if entity @s[nbt={effects:[{id:"minecraft:dolphins_grace",amplifier:1b}]}] at @s run function game:utility/effects/jump_boost
execute if entity @s[nbt={effects:[{id:"minecraft:dolphins_grace",amplifier:2b}]}] at @s run function game:utility/effects/float
execute if entity @s[nbt={effects:[{id:"minecraft:dolphins_grace",amplifier:3b}]}] at @s run function game:utility/effects/wipe_area
execute if entity @s[nbt={effects:[{id:"minecraft:dolphins_grace",amplifier:4b}]}] at @s run function game:player/warped_stick/crystal_marker/located
execute if entity @s[nbt={effects:[{id:"minecraft:glowing",amplifier:3b}]}] run function game:utility/glowing_cloud
tag @s add resloved_cloud