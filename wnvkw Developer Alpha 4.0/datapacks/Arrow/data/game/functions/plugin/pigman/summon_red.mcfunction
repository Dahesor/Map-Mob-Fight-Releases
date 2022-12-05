summon marker 3 1 2 {Tags:["pigman_cage_marker"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] Pos set from storage run map.pigMan.red.pigmanPos
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run summon zombified_piglin ~ ~ ~ {Team:"red",AbsorptionAmount:10000000.0f,PersistenceRequired:1b,ActiveEffects:[{Id:11b,Amplifier:10b,ShowParticles:0b,Duration:999999999}],Tags:["pigman_slave"],HandDropChances:[0.0f,0.0f],HandItems:[{id:"iron_shovel",Count:1b},{}]}
kill @e[type=marker,tag=pigman_cage_marker]