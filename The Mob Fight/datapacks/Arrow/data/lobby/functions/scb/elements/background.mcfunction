tag @s add scb_name
data merge entity @s {background:-1929379840}
data merge entity @s {brightness:{sky:15,block:15},alignment:"left",billboard:"fixed",Tags:["scb_name"],text:'"                                                                                                      "',Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],scale:[1.35f,0.83f,1.4f],translation:[0f,0.3f,0f]}}

execute store result entity @s transformation.scale[1] float 0.79 run scoreboard players get $total_lines calculator