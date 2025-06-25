summon skeleton ~ ~ ~ {ArmorDropChances:[0f,0f,0f,0f],Tags:["mobDEFini"],ArmorItems:[{},{},{id:"leather_chestplate",Count:1b,tag:{display:{color:8755726}}},{id:"leather_helmet",Count:1b,tag:{display:{color:5727496}}}],HandDropChances:[0.0f,0.0f],HandItems:[{id:"bow",Count:1b},{id:"tipped_arrow",Count:1b,tag:{custom_potion_effects:[{id:"poison",duration:140,amplifier:0b},{id:"nausea",duration:200,amplifier:0b}],CustomPotionColor:5140249}}]}
scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 25
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
kill