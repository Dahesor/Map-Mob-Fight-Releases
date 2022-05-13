kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
summon armor_stand 0 57.5 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191,CustomNameVisible:1b,CustomName:'{"translate":"★ lobby ★","color": "gold"}'}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.game_already_running","color": "green"}'}
fill -7 55 78 7 55 92 blue_stained_glass