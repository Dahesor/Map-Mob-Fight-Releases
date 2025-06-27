data modify storage run effects set value [{id:"unluck",amplifier:0b,ambient:1b,duration:2400,show_icon:1b,show_particles:0b}]

execute store result score $length calculator run data get entity @s active_effects[{id:"minecraft:unluck"}].duration
execute unless data entity @s active_effects[{id:"minecraft:unluck"}] run scoreboard players set $length calculator 0

execute if score $length calculator matches ..400 run data modify storage run effects[0].duration set value 800
execute if score $length calculator matches 401..1200 run data modify storage run effects[0].duration set value 1600
execute if score $length calculator matches 1201..1799 run data modify storage run effects[0].duration set value 2400
execute if score $length calculator matches 1800.. run data modify storage run effects[0].duration set value 800


execute if predicate game:player/effects/twitchy/5 run return run data modify storage run effects[0] merge value {ambient:4b,duration:2400}

execute if predicate game:player/effects/twitchy/4 if score $length calculator matches 1800.. run return run data modify storage run effects[0].amplifier set value 4b
execute if predicate game:player/effects/twitchy/4 run return run data modify storage run effects[0].amplifier set value 3b

execute if predicate game:player/effects/twitchy/3 if score $length calculator matches 1800.. run return run data modify storage run effects[0].amplifier set value 3b
execute if predicate game:player/effects/twitchy/3 run return run data modify storage run effects[0].amplifier set value 2b

execute if predicate game:player/effects/twitchy/2 if score $length calculator matches 1800.. run return run data modify storage run effects[0].amplifier set value 2b
execute if predicate game:player/effects/twitchy/2 run return run data modify storage run effects[0].amplifier set value 1b

execute if predicate game:player/effects/twitchy/1 if score $length calculator matches 1800.. run return run data modify storage run effects[0].amplifier set value 1b

return run data modify storage run effects[0].amplifier set value 0b