summon husk ~ ~ ~ {Tags:["mobDEFini","beacon","ticking"],HandItems:[{id:"enchanted_golden_apple",Count:1b},{}],ArmorItems:[{id:"diamond_boots",Count:1b},{id:"chainmail_leggings",Count:1b},{id:"diamond_chestplate",Count:1b,tag:{Trim:{pattern:"silence",material:"gold"}}},{id:"beacon",Count:1b,tag:{Enchantments:[{}]}}],ArmorDropChances:[0f,0f,0f,0f],HandDropChances:[0f,0f],Attributes:[{Name:'generic.max_health',Base:40.0d},{Name:'generic.max_absorption',Base:40.0d}],Health:40f,AbsorptionAmount:40.0f,CustomName:'{"translate":"god.becon","color":"red"}',active_effects:[{id:"invisibility",ambient:0b,show_icon:0b,show_particles:0b,duration:999999999,amplifier:0b},{id:"resistance",ambient:0b,show_icon:0b,show_particles:0b,duration:999999999,amplifier:0b}]}

scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 90
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
kill

#define tag beacon