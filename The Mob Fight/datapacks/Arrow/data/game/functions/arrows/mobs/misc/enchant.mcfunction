summon drowned ~ ~ ~ {active_effects:[{id:"invisibility",ambient:0b,show_icon:0b,show_particles:0b,duration:999999999,amplifier:0b},{id:"resistance",ambient:0b,show_icon:0b,show_particles:0b,duration:999999999,amplifier:0b}],Tags:["mob.enchanter","mobDEFini"],ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b},{id:"leather_chestplate",Count:1b,tag:{Trim:{pattern:"eye",material:"copper"}}},{id:"enchanting_table",Count:1b,tag:{Enchantments:[{}],targets:[]}}],HandItems:[{id:"enchanted_book",Count:1b,tag:{Enchantments:[{}]}},{id:"lapis_lazuli",Count:1b,tag:{Enchantments:[{}]}}],Attributes:[{Name:"generic.attack_damage",Base:0.0d}],Passengers:[{id:"marker",Tags:["mob.enchanter","ticking","DEF_score.3"],data:{targets:[]}}]}

scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 40
tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini

kill