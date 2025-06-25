bossbar set map:load color yellow
bossbar set map:load value 0
bossbar set map:load players @a
bossbar set map:load name {"translate":"bar.load_map","color": "red"}
bossbar set map:load visible false
bossbar set map:load visible true

function lobby:lobby_spinner/redstone

place template map:empty 6 35 0 none none 1
place template map:empty 6 35 -48 none none 1
place template map:empty -53 35 0 none none 1
place template map:empty -53 35 -48 none none 1
kill @e[type=painting,predicate=game:places/in_gaming_area]
bossbar set map:load value 0
schedule function lobby:map_selection/increase_bar 8t append
schedule function lobby:map_selection/increase_bar 16t append
schedule function lobby:map_selection/increase_bar 24t append
schedule function lobby:map_selection/increase_bar 32t append
schedule function lobby:map_selection/load_map 2s

