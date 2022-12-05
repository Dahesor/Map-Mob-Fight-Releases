function lobby:lobby_spinner/redstone
fill -8 0 77 20 47 97 air
schedule function lobby:map_selection/validate_preview 1t
bossbar set map:load color yellow
bossbar set map:load value 0
bossbar set map:load players @a
bossbar set map:load visible false
bossbar set map:load visible true
bossbar set map:load name {"translate":"bar.load_map","color": "red"}