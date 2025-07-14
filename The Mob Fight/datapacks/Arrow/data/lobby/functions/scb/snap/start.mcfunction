scoreboard players operation $display red = eco_end red
scoreboard players operation $display blue = eco_end blue
summon text_display ~ ~1 ~ {alignment:"left",billboard:"fixed",Tags:["scb_name","scb_name.initialize"],text:'[{"translate": "scb.eco.final","color": "green"},"  ",{"score": {"name": "$display","objective": "red"},"color": "red"}," - ",{"score": {"name": "$display","objective": "blue"},"color": "aqua"}]'}
execute as @e[type=text_display,tag=scb_name,tag=scb_name.initialize,distance=..20] run function lobby:scb/snap/text_mod

scoreboard players operation $display red = eco_sudden red
scoreboard players operation $display blue = eco_sudden blue
execute if score eco_sudden red matches 1.. run summon text_display ~ ~1.5 ~ {alignment:"left",billboard:"fixed",Tags:["scb_name","scb_name.initialize"],text:'[{"translate": "scb.eco.sudden","color": "green"},"  ",{"score": {"name": "$display","objective": "red"},"color": "red"}," - ",{"score": {"name": "$display","objective": "blue"},"color": "aqua"}]'}
execute as @e[type=text_display,tag=scb_name,tag=scb_name.initialize,distance=..20] run function lobby:scb/snap/text_mod

scoreboard players operation $display red = eco_mid red
scoreboard players operation $display blue = eco_mid blue
execute if score eco_mid red matches 1.. run summon text_display ~ ~2 ~ {alignment:"left",billboard:"fixed",Tags:["scb_name","scb_name.initialize"],text:'[{"translate": "scb.eco.half","color": "green"},"  ",{"score": {"name": "$display","objective": "red"},"color": "red"}," - ",{"score": {"name": "$display","objective": "blue"},"color": "aqua"}]'}
execute as @e[type=text_display,tag=scb_name,tag=scb_name.initialize,distance=..20] run function lobby:scb/snap/text_mod

scoreboard players operation $display red = eco_3 red
scoreboard players operation $display blue = eco_3 blue
summon text_display ~ ~2.5 ~ {alignment:"left",billboard:"fixed",Tags:["scb_name","scb_name.initialize"],text:'[{"translate": "scb.eco.3","color": "green"},"  ",{"score": {"name": "$display","objective": "red"},"color": "red"}," - ",{"score": {"name": "$display","objective": "blue"},"color": "aqua"}]'}
execute as @e[type=text_display,tag=scb_name,tag=scb_name.initialize,distance=..20] run function lobby:scb/snap/text_mod