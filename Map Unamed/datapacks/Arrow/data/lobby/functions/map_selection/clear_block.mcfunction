setblock -9 48 77 redstone_block destroy

setblock -9 48 77 air
setblock -8 48 77 white_concrete
kill @e[type=item,predicate=map:preview_section]
function lobby:map_selection/map_generation/map_check