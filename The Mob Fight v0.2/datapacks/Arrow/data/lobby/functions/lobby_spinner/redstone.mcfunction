kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
kill @e[type=marker,tag=lobby_spinner_word]
summon armor_stand 10 57.5 98 {Invisible:1b,NoGravity:1b,CustomNameVisible:1b,CustomName:'{"translate":"★ lobby ★","color": "gold"}',Invulnerable:1b,ArmorItems:[{},{},{},{id:"redstone_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191}
summon armor_stand 10 58.2 98 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.system_busy","color": "red"}'}
summon armor_stand 0.5 58.53 110.50 {Invisible:1b,NoGravity:1b,Invulnerable:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.system_busy","color": "red"}'}
#summon armor_stand 9.55 59.53 110.50 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word"],DisabledSlots:16191,CustomName:'{"translate":"spinner.system_busy","color": "red"}'}
summon armor_stand -9.5 58.3 98.5 {CustomName:'{"translate":"marker.tutorial","color": "gold"}',Tags:["lobby_spinner_word","tutorial_center"],Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Marker:1b}
fill 15 56 103 5 56 93 red_stained_glass replace #lobby:lobby_glass
scoreboard players set lobby_state Data -1
function lobby:signs/redstone
summon armor_stand 0.50 62.5 79.50 {Tags:["lobby_spinner_word"],CustomName:'{"translate": "★ Credit & Settings ★","color": "gold","italic": false}',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
#summon armor_stand -11.50 58 87.50 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "★ Parkour ★","color": "green","italic": false},{"translate":"Parkour.Start","italic": true,"color": "gold","underlined": true}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
#summon armor_stand 11.50 60 85.50 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "★ Parkour ★","color": "green","italic": false},{"translate":"Parkour.End","italic": true,"color": "gold","underlined": true}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
#summon marker -12.74 57.00 88.34 {Tags:["lobby_spinner_word","pu_start.lobby"]}
#summon marker 11.72 59.00 85.45 {Tags:["lobby_spinner_word","pu_end.lobby"]}
fill 10 42 -71 -10 42 -71 white_concrete


execute unless score GameMode Data matches 1..2 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.0","color": "green"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
execute if score GameMode Data matches 1 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.1","color": "red"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
execute if score GameMode Data matches 2 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.2","color": "dark_blue"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
summon armor_stand 0.50 46.00 -65.00 {Tags:["lobby_spinner_word"],CustomName:'{"translate":"★ Lobby ★","color": "gold"}',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}