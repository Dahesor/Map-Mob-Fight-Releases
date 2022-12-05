execute as @e[type=armor_stand,tag=lobby_spinner] at @s run function lobby:lobby_spinner/spin
execute unless score game Data matches 1.. as @a[team=!red] at @s if block ~ ~-0.8 ~ #lobby:join_red run function lobby:team_join_red
execute unless score game Data matches 1.. as @a[team=!blue] at @s if block ~ ~-0.8 ~ #lobby:join_blue run function lobby:team_join_blue
execute unless score game Data matches 1.. as @a[team=!] at @s if block ~ ~-0.8 ~ #lobby:join_random run function lobby:team_join_random
execute unless score game Data matches 1.. as @a at @s if block ~ ~-0.8 ~ #lobby:tp_tutorial run function lobby:tp_tutorial
execute unless score game Data matches 1.. as @a at @s if block ~ ~-0.8 ~ #lobby:tp_lobby run function lobby:tp_lobby
execute unless score game Data matches 1.. as @a[tag=!returning] run function lobby:player/inventory/self
#define tag lobby_kill
kill @e[type=item,nbt={Item:{tag:{lobby_kill:1b}}}]
execute positioned 7 64.2 133 run particle dust 0 1 1 0.75 ~ ~ ~ 0.2 0.2 0.2 10 1 normal
execute if block 0 58 92 minecraft:birch_button[powered=true] if score lobby_state Data matches 1 run function lobby:start_game/pressed

execute unless score game Data matches 1.. as @a[tag=!returning] at @s positioned ~ ~1.5 ~ rotated as @s run function lobby:player/crosshair/self
execute unless score game Data matches 1.. as @a[tag=!returning] at @s if entity @e[type=marker,tag=pu_start.lobby,distance=..4] run function lobby:parkour/give
execute unless score game Data matches 1.. as @a[tag=!returning,nbt={Inventory:[{id:"minecraft:carrot_on_a_stick",tag:{isParkourReseter:1b}}]}] at @s if entity @e[type=marker,tag=pu_end.lobby,distance=..4] if block ~ ~-0.5 ~ emerald_block run function lobby:parkour/finished