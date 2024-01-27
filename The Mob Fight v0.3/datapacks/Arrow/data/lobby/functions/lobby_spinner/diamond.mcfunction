kill @e[type=armor_stand,tag=lobby_spinner]
kill @e[type=armor_stand,tag=lobby_spinner_word]
kill @e[type=marker,tag=lobby_spinner_word]
summon armor_stand 10 57.5 98 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,CustomName:'{"translate":"★ Lobby ★","color": "gold"}',ArmorItems:[{},{},{},{id:"diamond_block",Count:1b}],Tags:["lobby_spinner"],DisabledSlots:16191}
execute unless score AdminSettingsOn Options matches 1.. run summon armor_stand 10 58.2 98 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"spinner.main_state","color": "yellow"}'}
execute if score AdminSettingsOn Options matches 1.. run summon armor_stand 10 58.2 98 {Invisible:1b,NoGravity:1b,Invulnerable:1b,Marker:1b,DisabledSlots:16191,Tags:["lobby_spinner_word"],CustomNameVisible:1b,CustomName:'{"translate":"op.wait_to_start.spinner","color": "yellow"}'}
summon armor_stand 0.5 58.53 110.50 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word"],DisabledSlots:16191,CustomName:'{"translate":"lobby.team_area","color": "gold"}'}
summon armor_stand -9.5 58.3 115.5 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","red_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_red","color": "red"}',Marker:1b}
summon armor_stand 10.5 58.3 115.5 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","blue_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_blue","color": "blue"}',Marker:1b}
summon armor_stand 0.5 58.3 116.5 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","random_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_random","color": "gray"}',Marker:1b}
summon armor_stand -9.5 58.3 98.5 {CustomName:'{"translate":"marker.tutorial","color": "gold"}',Tags:["lobby_spinner_word","tutorial_center"],Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Marker:1b}
fill 15 56 103 5 56 93 glass replace #lobby:lobby_glass
scoreboard players set lobby_state Data 1
function lobby:signs/diamond
fill -10 135 -10 10 140 10 air
kill @e[type=item,predicate=map:on_wait]
summon armor_stand 0.50 62.5 79.50 {Tags:["lobby_spinner_word"],CustomName:'{"translate": "★ Credit & Settings ★","color": "gold","italic": false}',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}

execute unless score GameMode Data matches 1..2 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.0","color": "green"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
execute if score GameMode Data matches 1 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.1","color": "red"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
execute if score GameMode Data matches 2 run summon armor_stand 5.50 58.37 96.5 {Tags:["lobby_spinner_word"],CustomName:'[{"translate": "word.gamemode","color": "gold","italic": false},{"translate": "gamemode.2","color": "dark_blue"}]',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}

setblock 3 55 114 air
setblock 3 55 114 oak_wall_sign{front_text:{messages:['[{"translate": "word.current_map","color": "gold","italic": false},{"nbt":"map.displayName","storage": "run","interpret": true}]','""','""','""']}}
summon armor_stand 5.50 58.10 96.5 {Tags:["lobby_spinner_word","copy_nbt_text2"],CustomName:'""',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
execute as @e[type=armor_stand,tag=copy_nbt_text2] run data modify entity @s CustomName set from block 3 55 114 front_text.messages[0]
fill 10 42 -71 -10 42 -71 white_concrete
summon armor_stand 0.50 46.00 -65.00 {Tags:["lobby_spinner_word"],CustomName:'{"translate":"★ Lobby ★","color": "gold"}',CustomNameVisible:1b,Marker:1b,Invisible:1b,Invulnerable:1b,NoGravity:1b,NoBasePlate:1b}
summon armor_stand 13.50 59.17 107.0 {Invisible:1b,NoGravity:1b,Invulnerable:1b,CustomNameVisible:1b,Tags:["lobby_spinner_word","random_p_centerA"],DisabledSlots:16191,CustomName:'{"translate":"lobby.join_spectate","color": "white"}',Marker:1b}
