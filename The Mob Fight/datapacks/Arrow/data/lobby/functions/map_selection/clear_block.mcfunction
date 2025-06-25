setblock 2 48 90 redstone_block destroy
kill @e[type=end_crystal]
setblock 2 48 90 air
setblock 2 49 90 black_concrete
kill @e[type=item,predicate=map:preview_section]
bossbar set map:load value 7
function lobby:map_selection/map_generation/map_check