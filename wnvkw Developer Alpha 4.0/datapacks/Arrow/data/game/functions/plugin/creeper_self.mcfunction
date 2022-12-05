tag @s add not_effected
data modify entity @s ActiveEffects append value {Id:32b,Amplifier:0b,Duration:999999999,ShowIcon:0b,ShowParticles:0b,Ambient:0b}
data merge entity @s {ActiveEffects:[{Id:30b,Amplifier:0b,Duration:999999999,ShowIcon:0b,ShowParticles:0b,Ambient:0b}]}