setblock -53 36 0 redstone_block
setblock -53 35 -48 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:empty",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block -53 35 -48 name set from storage run map.Structures.Pathes[3]
bossbar set map:load value 14
schedule function lobby:map_selection/map_generation/finish 2t
