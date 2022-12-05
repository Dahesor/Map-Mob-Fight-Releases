setblock -9 48 77 redstone_block destroy
kill @e[type=end_crystal]
setblock -9 48 77 air
setblock -8 48 77 white_concrete
kill @e[type=item,predicate=map:preview_section]
bossbar set map:load value 3
function lobby:map_selection/map_generation/map_check