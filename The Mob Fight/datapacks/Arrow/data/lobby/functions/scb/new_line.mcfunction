#ID
execute if entity @s[team=red] run summon text_display ~-0.3 ~ ~-0.3 {brightness:{sky:15,block:15},alignment:"right",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"storage": "run","nbt": "name.this","color": "red"}',Rotation:[45.0f,0f]}
execute if entity @s[team=blue] run summon text_display ~-0.3 ~ ~-0.3 {brightness:{sky:15,block:15},alignment:"right",billboard:"fixed",background:0,Tags:["scb_name"],text:'{"storage": "run","nbt": "name.this","color": "aqua"}',Rotation:[45.0f,0f]}

#Head
execute positioned ~0.5 ~ ~0.5 summon item_display run function lobby:scb/elements/player_head

#Attack
scoreboard players operation $hold calculator = @s scb.shot
execute positioned ~1.1 ~ ~1.1 summon text_display run function lobby:scb/elements/score

#Defence
scoreboard players operation $hold calculator = @s scb.def
execute positioned ~1.6 ~ ~1.6 summon text_display run function lobby:scb/elements/score

#Eco
scoreboard players operation $hold calculator = @s scb.eco
scoreboard players operation $hold calculator /= #10 calculator
execute positioned ~2.1 ~ ~2.1 summon text_display run function lobby:scb/elements/score

#Support
scoreboard players operation $hold calculator = @s scb.support
scoreboard players operation $hold calculator /= #10 calculator
execute positioned ~2.6 ~ ~2.6 summon text_display run function lobby:scb/elements/score

#Death
scoreboard players operation $hold calculator = @s scb.death
execute positioned ~3.15 ~ ~3.15 summon text_display run function lobby:scb/elements/score