fill 3 50 91 17 55 105 air
fill -8 0 77 20 7 97 air
setblock 2 49 90 structure_block{posX:1,posY:1,posZ:1,mode:"LOAD",name:"map:unknown",integrity:1.0f,showboundingbox:0b,author:"?"} replace
execute if data storage run map.PreviewPath run data modify block 2 49 90 name set from storage run map.PreviewPath
bossbar set map:load value 6
schedule function lobby:map_selection/clear_block 1t