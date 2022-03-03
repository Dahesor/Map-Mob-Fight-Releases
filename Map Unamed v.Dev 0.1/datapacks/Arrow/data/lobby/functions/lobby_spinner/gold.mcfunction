kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
summon armor_stand 0 57.5 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:'{"translate":"★ lobby ★","color": "gold"}',ArmorItems:[{},{},{},{id:"gold_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"↓ 跳入加入游戏 ↓","color": "yellow"}'}
fill -7 55 78 7 55 92 end_gateway{Age:-9999999,ExactTeleport:1b,ExitPortal:{X:0,Y:136,Z:0}}