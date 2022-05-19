setblock -7 0 77 redstone_block
#-8 0 77
execute if blocks -8 7 77 12 46 96 -48 0 77 all run schedule function lobby:map_selection/set_preview 1t
execute unless blocks -8 7 77 12 46 96 -48 0 77 all run function lobby:map_selection/error/height_limit
bossbar set map:load value 1