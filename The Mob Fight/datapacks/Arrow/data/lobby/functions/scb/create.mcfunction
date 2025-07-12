kill @e[type=marker,tag=scb]
kill @e[type=text_display,tag=scb_name]
kill @e[type=item_display,tag=scb_name]
summon marker 9.5 58.00 83.5 {Tags:["scb"]}
scoreboard players set $total_lines calculator 1
execute as @a[team=red] run function lobby:scb/read
execute as @a[team=blue] run function lobby:scb/read

execute positioned 9.5 57.60 83.5 positioned ~1.25 ~ ~1.15 summon text_display run function lobby:scb/elements/background

execute at @e[type=marker,tag=scb] positioned ~1.1 ~0.6 ~1.1 summon text_display run function lobby:scb/elements/winner

execute at @e[type=marker,tag=scb] positioned ~-0.5 ~0.6 ~-0.5 summon text_display run function lobby:scb/elements/red_score
execute at @e[type=marker,tag=scb] positioned ~2.7 ~0.6 ~2.7 summon text_display run function lobby:scb/elements/blue_score

execute positioned 9.5 58.1 83.5 run summon text_display ~1 ~ ~1 {brightness:{sky:15,block:15},alignment:"center",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"translate": "scb.att"}',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}

execute positioned 9.5 58.1 83.5 run summon text_display ~1.55 ~ ~1.55 {brightness:{sky:15,block:15},alignment:"center",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"translate": "scb.def"}',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}

execute positioned 9.5 58.1 83.5 run summon text_display ~2.1 ~ ~2.1 {brightness:{sky:15,block:15},alignment:"center",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"translate": "scb.eco"}',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}

execute positioned 9.5 58.1 83.5 run summon text_display ~2.65 ~ ~2.65 {brightness:{sky:15,block:15},alignment:"center",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"translate": "scb.sup"}',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}

execute positioned 9.5 58.1 83.5 run summon text_display ~3.2 ~ ~3.2 {brightness:{sky:15,block:15},alignment:"center",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"translate": "scb.die"}',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[0.8f,0.8f,0.8f],translation:[0f,0f,0f]}}

scoreboard players reset $total_lines calculator