#define tag god.mg
summon stray ~ ~ ~ {Tags:["ticking","god.mg","mobDEFini"],Health:50.0f,Attributes:[{Name:"generic.max_health",Base:50.0d},{Base:24d,Name:'generic.follow_range'}],ArmorItems:[{id:"netherite_boots",Count:1b,tag:{Enchantments:[{id:"feather_falling",lvl:5}]}},{},{id:"netherite_chestplate",Count:1b,tag:{Enchantments:[{id:"blast_protection",lvl:4}]}},{id:"dispenser",Count:1b,tag:{Enchantments:[{}]}}],CustomName:'{"translate":"god.mg","color":"red"}'}
scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 70
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
kill @s