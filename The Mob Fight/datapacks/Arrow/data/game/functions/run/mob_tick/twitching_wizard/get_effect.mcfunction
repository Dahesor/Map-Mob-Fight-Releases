data modify storage run effects set value [{id:"unluck",amplifier:0b,ambient:1b,duration:2400,show_icon:1b,show_particles:0b}]

execute if predicate game:player/effects/twitchy/5 run return run data modify storage run effects[0].amplifier set value 4b

execute if predicate game:player/effects/twitchy/4 if predicate game:player/effects/twitchy/stackable run return run data modify storage run effects[0].amplifier set value 4b
execute if predicate game:player/effects/twitchy/4 run return run data modify storage run effects[0].amplifier set value 3b

execute if predicate game:player/effects/twitchy/3 if predicate game:player/effects/twitchy/stackable run return run data modify storage run effects[0].amplifier set value 3b
execute if predicate game:player/effects/twitchy/3 run return run data modify storage run effects[0].amplifier set value 2b

execute if predicate game:player/effects/twitchy/2 if predicate game:player/effects/twitchy/stackable run return run data modify storage run effects[0].amplifier set value 2b
execute if predicate game:player/effects/twitchy/2 run return run data modify storage run effects[0].amplifier set value 1b

execute if predicate game:player/effects/twitchy/1 if predicate game:player/effects/twitchy/stackable run return run data modify storage run effects[0].amplifier set value 1b

return run data modify storage run effects[0].amplifier set value 0b