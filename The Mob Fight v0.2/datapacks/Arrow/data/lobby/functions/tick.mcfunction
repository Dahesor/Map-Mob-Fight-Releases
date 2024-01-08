execute as @e[type=armor_stand,tag=lobby_spinner] at @s run function lobby:lobby_spinner/spin
execute unless score game Data matches 1.. as @a at @s run function lobby:player/switch_team
execute unless score game Data matches 1.. as @a[tag=!returning] run function lobby:player/inventory/self
#define tag lobby_kill
kill @e[type=item,nbt={Item:{tag:{lobby_kill:1b}}}]
execute positioned -5 61.1 70 run particle dust 0 1 1 0.75 ~ ~ ~ 0.2 0.2 0.2 10 1 normal
execute unless score AdminSettingsOn Options matches 1.. if block 4 58 100 minecraft:birch_button[powered=true] if score lobby_state Data matches 1 run function lobby:start_game/pressed

function lobby:tutorial/tick

execute unless score game Data matches 1.. as @a[tag=!returning] at @s positioned ~ ~1.5 ~ rotated as @s run function lobby:player/crosshair/self
#execute unless score game Data matches 1.. as @a[tag=!returning] at @s if entity @e[type=marker,tag=pu_start.lobby,distance=..4] run function lobby:parkour/give
#execute unless score game Data matches 1.. as @a[tag=!returning,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{isParkourReseter:1b}}]}] at @s if entity @e[type=marker,tag=pu_end.lobby,distance=..4] if block ~ ~-0.5 ~ emerald_block run function lobby:parkour/finished


execute if score #loop_20 calculator matches 10 run tag @e[tag=tutorial.tutorial,type=text_display] add killing_display
execute if score #loop_20 calculator matches 10 positioned -6.00 43.32 -73.06 run summon block_display ~-0.5 ~0.3 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.1","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:210,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0000f,0.0038f,2.4993f,0.0602f,1.0000f,-1.8001f,-0.0390f,1.7344f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["tutorial.tutorial"]}],Tags:["tutorial.tutorial"]}
execute if score #loop_20 calculator matches 10 positioned -6.00 43.32 -73.06 run summon block_display ~-0.5 ~-0.8 ~-0.5 {Passengers:[{id:"minecraft:text_display",text:'{"translate":"tutorial.tutorial.2","color":"aqua"}',text_opacity:255,background:0,alignment:"center",line_width:160,default_background:false,transformation:[1.7348f,-0.0460f,1.7996f,0.0000f,0.0038f,2.4993f,0.0602f,1.0000f,-1.8001f,-0.0390f,1.7344f,0.0000f,0.0000f,0.0000f,0.0000f,1.0000f],Tags:["tutorial.tutorial"]}],Tags:["tutorial.tutorial"]}
execute if score #loop_20 calculator matches 17 run kill @e[tag=killing_display,type=text_display]