setblock 6 36 0 redstone_block
setblock 6 35 -48 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:empty",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block 6 35 -48 name set from storage run map.Structures.Pathes[0]
bossbar set map:load value 10
execute if data storage run map.Structures{type:"specialized"} run schedule function lobby:map_selection/map_generation/blue_a 2t
execute if data storage run map.Structures{type:"rotation"} run schedule function lobby:map_selection/map_generation/rotate_red_a 2t
execute unless data storage run map.Structures{type:"specialized"} unless data storage run map.Structures{type:"rotation"} run function lobby:map_selection/error/wrong_map_gen_type