kill @e[type=armor_stand,tag=lobby_spinner_word]
tellraw @a {"translate":"warn.map_load.failed","color": "red"}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"error.massage.ask_for_help","color": "red","bold": true}'}
summon armor_stand 0 57.9 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"ERROR_Preview_Exceed_Height_Limit","color": "red","bold": true}'}
fill -7 54 78 7 49 92 air