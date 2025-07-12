data merge entity @s {brightness:{sky:15,block:15},alignment:"left",billboard:"fixed",background:0,Tags:["scb_name"],Rotation:[45.0f,0f],transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[4f,4f,4f]},background:1140850688}
execute if score $$%winner calculator matches 0 run data modify entity @s text set value '{"translate": "winner.red","color": "red"}'
execute if score $$%winner calculator matches 1 run data modify entity @s text set value '{"translate": "winner.blue","color": "aqua"}'
execute if score $$%winner calculator matches 2 run data modify entity @s text set value '{"translate": "title.draw","color": "white"}'


