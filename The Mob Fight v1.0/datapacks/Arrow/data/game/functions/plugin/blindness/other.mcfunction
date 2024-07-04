execute as @e[type=area_effect_cloud,nbt={effects:[{id:"minecraft:blindness",show_particles:0b}]}] at @s run function game:plugin/blindness/effect
schedule function game:plugin/blindness/loop 7t