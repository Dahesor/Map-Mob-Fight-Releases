execute as @e[type=armor_stand,tag=lobby_spinner] at @s run function lobby:lobby_spinner/spin
execute unless score game Data matches 1.. as @a[team=!red] at @s if block ~ ~-0.8 ~ #lobby:join_red run function lobby:team_join_red
execute unless score game Data matches 1.. as @a[team=!blue] at @s if block ~ ~-0.8 ~ #lobby:join_blue run function lobby:team_join_blue
execute unless score game Data matches 1.. as @a[team=!] at @s if block ~ ~-0.8 ~ #lobby:join_random run function lobby:team_join_random
execute unless score game Data matches 1.. as @a[tag=!returning] run function lobby:player/inventory/self
#define tag lobby_kill
kill @e[type=item,nbt={Item:{tag:{lobby_kill:1b}}}]
tp @a[x=55,y=21,z=57,dx=-100,dy=2,dz=100] 0.50 58.5 110.5 -180.00 0.0
execute if block 0 58 92 minecraft:birch_button[powered=true] if score lobby_state Data matches 1 run function lobby:start_game/pressed