fill -24 57 19 -26 57 21 water
fill -20 57 4 -18 57 6 water
fill -33 57 38 -31 57 36 water
fill -17 57 31 -19 57 29 water replace bedrock
fill 20 57 -7 18 57 -5 water
fill 26 57 -22 24 57 -20 water
fill 17 57 -32 19 57 -30 water replace bedrock
fill 33 57 -39 31 57 -37 water
fill -32 72 24 -35 72 28 air
fill 34 72 -25 32 72 -29 air
fill 36 42 -10 36 46 -10 waxed_cut_copper
fill -36 42 9 -36 46 9 waxed_cut_copper
fill 32 62 -31 41 62 -32 minecraft:birch_slab[type= bottom]
fill 38 69 -32 31 69 -31 minecraft:birch_slab[type=bottom]
fill -31 69 30 -38 69 31 minecraft:birch_slab[type=bottom]
fill -32 62 31 -41 62 30 minecraft:birch_slab[type=bottom]
fill 31 58 -32 31 58 -31 air
fill -26 58 38 -26 58 39 air
fill -31 58 31 -31 58 30 air
fill 26 58 -39 26 58 -40 air
setblock 17 58 -21 water
setblock -17 58 20 water
setblock -46 42 19 air
setblock 46 42 -20 air
setblock 47 41 -15 waxed_copper_block
setblock -47 41 14 waxed_copper_block
setblock 36 41 -10 waxed_cut_copper_slab[type=top]
setblock -36 41 9 waxed_cut_copper_slab[type=top]
setblock -47 41 16 amethyst_block
setblock -47 41 10 netherite_block
setblock 47 41 -17 amethyst_block
setblock 47 41 -11 netherite_block

setblock 46 42 -11 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"30","color":"white"}]}','""','{"translate":"info.free"}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock 46 43 -11 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"map.center.side_door.1","color":"red"}','{"translate":"map.center.side_door.2","color":"white"}','{"translate":"map.center.side_door.3","color":"white"}','{"translate":"map.center.side_door.4","color":"white"}']}}
setblock 46 42 -15 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"180","color":"white"}]}','""','{"translate":"copper","with":["§a14"]}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock 46 43 -15 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"map.center.dirt.1","color":"gold"}','{"translate":"map.center.dirt.2","color":"white"}','{"translate":"map.center.dirt.3","color":"white"}','{"translate":"map.center.dirt.4","color":"white"}']}}
setblock 46 42 -13 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"60","color":"white"}]}','""','{"translate":"netherite.light","with":["§a1"]}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock 46 43 -13 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"map.center.isolation.1","color":"light_purple"}','{"translate":"map.center.isolation.2","color":"white"}','{"translate":"map.center.isolation.3","color":"white"}','{"translate":"map.center.isolation.4","color":"white"}']}}
setblock 46 42 -17 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"map.center.outglass.close","color":"gold"}','""','{"translate":"info.free"}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock 46 43 -17 cherry_wall_sign[facing=west]{front_text:{messages:['{"translate":"map.center.outglass.1","color":"gold"}','{"translate":"map.center.outglass.2","color":"white"}','{"translate":"map.center.outglass.3","color":"white"}','{"translate":"map.center.outglass.4","color":"white"}']}}

setblock -46 42 10 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"30","color":"white"}]}','""','{"translate":"info.free"}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock -46 43 10 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"map.center.side_door.1","color":"red"}','{"translate":"map.center.side_door.2","color":"white"}','{"translate":"map.center.side_door.3","color":"white"}','{"translate":"map.center.side_door.4","color":"white"}']}}
setblock -46 42 14 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"180","color":"white"}]}','""','{"translate":"copper","with":["§a14"]}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock -46 43 14 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"map.center.dirt.1","color":"gold"}','{"translate":"map.center.dirt.2","color":"white"}','{"translate":"map.center.dirt.3","color":"white"}','{"translate":"map.center.dirt.4","color":"white"}']}}
setblock -46 42 12 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"info.duration","with":[{"text":"60","color":"white"}]}','""','{"translate":"netherite.light","with":["§a1"]}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock -46 43 12 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"map.center.isolation.1","color":"light_purple"}','{"translate":"map.center.isolation.2","color":"white"}','{"translate":"map.center.isolation.3","color":"white"}','{"translate":"map.center.isolation.4","color":"white"}']}}
setblock -46 42 16 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"map.center.outglass.close","color":"gold"}','""','{"translate":"info.free"}','{"text":"↓ ↓ ↓","color":"white"}']}}
setblock -46 43 16 cherry_wall_sign[facing=east]{front_text:{messages:['{"translate":"map.center.outglass.1","color":"gold"}','{"translate":"map.center.outglass.2","color":"white"}','{"translate":"map.center.outglass.3","color":"white"}','{"translate":"map.center.outglass.4","color":"white"}']}}

scoreboard players set center%outer_glass red 0
scoreboard players set center%outer_glass blue 0
scoreboard players set center%side_door red 0
scoreboard players set center%side_door blue 0
scoreboard players set center%dirt_switch red 0
scoreboard players set center%dirt_switch blue 0
scoreboard players set center%isolation red 0
scoreboard players set center%isolation blue 0
scoreboard players set center%window_closed red 1
scoreboard players set center%window_closed blue 1


scoreboard objectives add map.CENTER.falling_distance dummy

#>
#@internal
#define score_holder center%outer_glass
#>
#@internal
#define score_holder center%side_door
#>
#@internal
#define score_holder center%dirt_switch
#>
#@internal
#define score_holder center%isolation
#>
#@internal
#define score_holder center%window_closed
#>
#@internal
#define tag center%iron_golem
#>
#@internal
#define tag center.red_gate
#>
#@internal
#define tag center.blue_gate
#>
#@internal
#define tag center.gate_new
#>
#@internal
#define tag center.killed_by_dripstone
#>
#@internal
#define score_holder !sec