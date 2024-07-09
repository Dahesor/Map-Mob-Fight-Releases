execute store result score pos_X storage_DTM run data get entity @s Pos[0] 10000
execute store result score pos_Y storage_DTM run data get entity @s Pos[1] 10000
execute store result score pos_Z storage_DTM run data get entity @s Pos[2] 10000
execute store result score destination_X storage_DTM run data get entity @e[type=!player,tag=DTMdestination,limit=1] Pos[0] 10000
execute store result score destination_Y storage_DTM run data get entity @e[type=!player,tag=DTMdestination,limit=1] Pos[1] 10000
execute store result score destination_Z storage_DTM run data get entity @e[type=!player,tag=DTMdestination,limit=1] Pos[2] 10000
scoreboard players operation destination_X storage_DTM -= pos_X storage_DTM
scoreboard players operation destination_Y storage_DTM -= pos_Y storage_DTM
scoreboard players operation destination_Z storage_DTM -= pos_Z storage_DTM
execute store result entity @s Motion[0] double 0.00004 run scoreboard players get destination_X storage_DTM
execute store result entity @s Motion[1] double 0.00004 run scoreboard players get destination_Y storage_DTM
execute store result entity @s Motion[2] double 0.00004 run scoreboard players get destination_Z storage_DTM