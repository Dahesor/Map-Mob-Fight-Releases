kill @e[type=armor_stand,tag=lobby_spinner_word]
tellraw @a {"translate":"[!] 地图加载失败！尝试使用其他地图！","color": "red"}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"错误，请联系作者","color": "red","bold": true}'}
summon armor_stand 0 57.9 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"ERROR_Map_Structure_Path_Not_Found","color": "red","bold": true}'}