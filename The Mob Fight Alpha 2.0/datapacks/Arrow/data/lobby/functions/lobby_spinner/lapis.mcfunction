kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
summon armor_stand 0 57.5 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,ArmorItems:[{},{},{},{id:"lapis_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191,CustomNameVisible:1b,CustomName:'{"translate":"★ lobby ★","color": "gold"}'}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.game_already_running","color": "green"}'}
summon armor_stand -9.55 59.53 110.50 {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.game_already_running","color": "red"}'}
fill -7 55 78 7 55 92 blue_stained_glass
scoreboard players set lobby_state Data 3
function lobby:signs/lapis
fill -10 135 -10 10 140 10 air
kill @e[type=item,predicate=map:on_wait]