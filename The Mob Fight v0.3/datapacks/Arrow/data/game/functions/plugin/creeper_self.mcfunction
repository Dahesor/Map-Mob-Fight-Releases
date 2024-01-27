tag @s add not_effected
data modify entity @s active_effects append value {id:"hero_of_the_village",amplifier:0b,duration:999999999,show_icon:0b,show_particles:0b,ambient:0b}
data merge entity @s {active_effects:[{id:"dolphins_grace",amplifier:0b,duration:999999999,show_icon:0b,show_particles:0b,ambient:0b}]}