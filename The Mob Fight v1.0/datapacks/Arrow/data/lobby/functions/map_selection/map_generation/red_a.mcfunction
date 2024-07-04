setblock 6 35 0 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:empty",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block 6 35 0 name set from storage run map.Structures.Pathes[1]
bossbar set map:load value 8
schedule function lobby:map_selection/map_generation/red_b 2t
