kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
summon armor_stand 0 57.5 85 {Invisible:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"translate":"★ lobby ★","color": "gold"}',Invulnerable:1b,ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.system_busy","color": "red"}'}
summon armor_stand -9.55 59.53 110.50 {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.system_busy","color": "red"}'}
fill -7 55 78 7 55 92 red_stained_glass
scoreboard players set lobby_state Data -1
function lobby:signs/redstone