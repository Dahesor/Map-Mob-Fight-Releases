setblock 6 36 -48 redstone_block
setblock -6 35 -1 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:empty",rotation:"CLOCKWISE_180",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block -6 35 -1 name set from storage run map.Structures.Pathes[1]
schedule function lobby:map_selection/map_generation/rotate_red_b 2t
bossbar set map:load value 8
