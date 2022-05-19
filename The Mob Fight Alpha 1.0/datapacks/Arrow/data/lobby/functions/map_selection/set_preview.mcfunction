fill -7 54 78 7 49 92 air
fill -8 0 77 20 7 97 air
setblock -8 48 77 structure_block{posX:1,posY:1,posZ:1,mode:"LOAD",name:"map:unknown",integrity:1.0f,showboundingbox:0b,author:"?"} replace
execute if data storage run map.PreviewPath run data modify block -8 48 77 name set from storage run map.PreviewPath
bossbar set map:load value 2
schedule function lobby:map_selection/clear_block 1t