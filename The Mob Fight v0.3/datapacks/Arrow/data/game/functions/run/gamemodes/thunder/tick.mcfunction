function game:run/gamemodes/thunder/events/controller

execute if score visible red matches 0 unless score flare red matches 2.. run effect give @a[team=red] blindness infinite 0 true
execute if score visible blue matches 0 unless score flare blue matches 2.. run effect give @a[team=blue] blindness infinite 0 true
execute if score flare red matches 2.. run effect clear @a[team=red,tag=THUNDER.under_sky] blindness
execute if score flare blue matches 2.. run effect clear @a[team=blue,tag=THUNDER.under_sky] blindness

execute if entity @e[type=firework_rocket,tag=THUNDER.red_flare,nbt={Life:99}] run function game:run/gamemodes/thunder/events/flare/red_flare
execute if entity @e[type=firework_rocket,tag=THUNDER.blue_flare,nbt={Life:99}] run function game:run/gamemodes/thunder/events/flare/blue_flare