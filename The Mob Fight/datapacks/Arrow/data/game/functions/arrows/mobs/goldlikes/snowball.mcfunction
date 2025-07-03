#define tag god.mg
summon stray ~ ~ ~ {Tags:["ticking","god.snowball","mobDEFini","DEF_score.3"],Attributes:[{Base:24d,Name:'generic.follow_range'}],ArmorItems:[{id:"netherite_boots",Count:1b,tag:{Enchantments:[{id:"feather_falling",lvl:5}]}},{},{id:"iron_chestplate",Count:1b,tag:{Enchantments:[{id:"blast_protection",lvl:4}]}},{id:"dropper",Count:1b}],CustomName:'{"translate":"arrow.snowball","color":"dark_purple"}'}
scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 30
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini
kill @s