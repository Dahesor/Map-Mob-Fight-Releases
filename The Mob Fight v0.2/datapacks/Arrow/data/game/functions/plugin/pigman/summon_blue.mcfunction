summon marker 3 1 2 {Tags:["pigman_cage_marker"]}
data modify entity @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] Pos set from storage run map.pigMan.blue.pigmanPos
execute at @e[type=marker,limit=1,sort=nearest,tag=pigman_cage_marker] run summon zombified_piglin ~ ~ ~ {Team:"blue",PersistenceRequired:1b,Tags:["pigman_slave"],AbsorptionAmount:10000000.0f,active_effects:[{id:"resistance",amplifier:10b,show_particles:0b,duration:999999999}],HandDropChances:[0.0f,0.0f],HandItems:[{id:"iron_shovel",Count:1b},{}]}
kill @e[type=marker,tag=pigman_cage_marker]