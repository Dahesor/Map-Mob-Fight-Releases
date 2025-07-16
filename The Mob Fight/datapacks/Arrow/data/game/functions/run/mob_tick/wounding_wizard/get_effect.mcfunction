data modify storage run effects set value [{id:"luck",amplifier:0b,ambient:1b,duration:3600,show_icon:1b,show_particles:0b}]

execute store result score $length calculator run data get entity @s active_effects[{id:"minecraft:luck"}].duration
execute unless data entity @s active_effects[{id:"minecraft:luck"}] run scoreboard players set $length calculator 0

execute if score $length calculator matches ..1200 run data modify storage run effects[0].duration set value 1800
execute if score $length calculator matches 1201..2400 run data modify storage run effects[0].duration set value 3600
execute if score $length calculator matches 2401.. run data modify storage run effects[0].duration set value 1800

execute if predicate game:player/effects/heartache/6 run return run data modify storage run effects[0] merge value {ambient:5b,duration:3600}

execute if predicate game:player/effects/heartache/5 if score $length calculator matches 2401.. run return run data modify storage run effects[0].amplifier set value 5b
execute if predicate game:player/effects/heartache/5 run return run data modify storage run effects[0].amplifier set value 4b

execute if predicate game:player/effects/heartache/4 if score $length calculator matches 2401.. run return run data modify storage run effects[0].amplifier set value 4b
execute if predicate game:player/effects/heartache/4 run return run data modify storage run effects[0].amplifier set value 3b

execute if predicate game:player/effects/heartache/3 if score $length calculator matches 2401.. run return run data modify storage run effects[0].amplifier set value 3b
execute if predicate game:player/effects/heartache/3 run return run data modify storage run effects[0].amplifier set value 2b

execute if predicate game:player/effects/heartache/2 if score $length calculator matches 2401.. run return run data modify storage run effects[0].amplifier set value 2b
execute if predicate game:player/effects/heartache/2 run return run data modify storage run effects[0].amplifier set value 1b

execute if predicate game:player/effects/heartache/1 if score $length calculator matches 2401.. run return run data modify storage run effects[0].amplifier set value 1b

return run data modify storage run effects[0].amplifier set value 0b