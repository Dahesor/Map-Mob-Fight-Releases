setblock 6 36 -48 redstone_block
setblock -53 35 0 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:empty",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block -53 35 0 name set from storage run map.Structures.Pathes[2]
bossbar set map:load value 8
schedule function lobby:map_selection/map_generation/blue_b 2t
