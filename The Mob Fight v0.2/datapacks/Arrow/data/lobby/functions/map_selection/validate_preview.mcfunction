setblock -8 0 77 structure_block{posX:0,posY:0,posZ:0,mode:"LOAD",name:"map:unknown",integrity:1.0f,showboundingbox:0b,author:"?"} replace
data modify block -8 0 77 name set from storage run map.PreviewPath
schedule function lobby:map_selection/check_preview 1t

