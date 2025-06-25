summon skeleton ~ ~ ~ {HandItems:[{id:"bow",Count:1b},{}],Tags:["mobDEFini"],ArmorItems:[{id:"leather_boots",Count:1b,tag:{display:{color:11389641},Enchantments:[{id:"minecraft:feather_falling",lvl:5}]}},{},{id:"chainmail_chestplate",Count:1b},{}],ArmorDropChances:[0.0f,0.0f,0.0f,0.0f],HandDropChances:[0.0f,0.0f],active_effects:[{id:"levitation",amplifier:2b,duration:300,ambient:1b}]}
scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 35
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
kill @s