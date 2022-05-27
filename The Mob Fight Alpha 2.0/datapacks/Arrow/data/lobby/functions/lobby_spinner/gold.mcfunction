kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
summon armor_stand 0 57.5 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:'{"translate":"★ Lobby ★","color": "gold"}',ArmorItems:[{},{},{},{id:"gold_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191}
summon armor_stand 0 58.2 85 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.join_game","color": "yellow"}'}
summon armor_stand -9.55 59.53 110.50 {Invisible:2b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word"],DisabledSlots:16191,CustomName:'{"translate":"lobby.team_area","color": "gold"}'}
summon armor_stand -11.37 60.2 100.43 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","red_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_red","color": "red"}',Marker:1b}
summon armor_stand -11.20 60.2 119.94 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","blue_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_blue","color": "blue"}',Marker:1b}
summon armor_stand -14.90 60.2 110.5 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","random_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_random","color": "gray"}',Marker:1b}
fill -7 55 78 7 55 92 end_gateway{Age:-9999999,ExactTeleport:1b,ExitPortal:{X:0,Y:137,Z:0}}
scoreboard players set lobby_state Data 2
function lobby:signs/gold


schedule function lobby:start_game/waiting_platform 1t
