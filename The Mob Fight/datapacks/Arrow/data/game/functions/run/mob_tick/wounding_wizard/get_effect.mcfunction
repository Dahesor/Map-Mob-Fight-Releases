data modify storage run effects set value [{id:"luck",amplifier:0b,ambient:1b,duration:3600,show_icon:1b,show_particles:0b}]

execute if predicate game:player/effects/heartache/6 run return run data modify storage run effects[0].amplifier set value 5b

execute if predicate game:player/effects/heartache/5 if predicate game:player/effects/heartache/stackable run return run data modify storage run effects[0].amplifier set value 5b
execute if predicate game:player/effects/heartache/5 run return run data modify storage run effects[0].amplifier set value 4b

execute if predicate game:player/effects/heartache/4 if predicate game:player/effects/heartache/stackable run return run data modify storage run effects[0].amplifier set value 4b
execute if predicate game:player/effects/heartache/4 run return run data modify storage run effects[0].amplifier set value 3b

execute if predicate game:player/effects/heartache/3 if predicate game:player/effects/heartache/stackable run return run data modify storage run effects[0].amplifier set value 3b
execute if predicate game:player/effects/heartache/3 run return run data modify storage run effects[0].amplifier set value 2b

execute if predicate game:player/effects/heartache/2 if predicate game:player/effects/heartache/stackable run return run data modify storage run effects[0].amplifier set value 2b
execute if predicate game:player/effects/heartache/2 run return run data modify storage run effects[0].amplifier set value 1b

execute if predicate game:player/effects/heartache/1 if predicate game:player/effects/heartache/stackable run return run data modify storage run effects[0].amplifier set value 1b

return run data modify storage run effects[0].amplifier set value 0b