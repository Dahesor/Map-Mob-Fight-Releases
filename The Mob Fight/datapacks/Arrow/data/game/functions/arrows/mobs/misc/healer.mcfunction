#summon drowned ~ ~ ~ {active_effects:[{id:"resistance",ambient:0b,show_icon:0b,show_particles:0b,duration:999999999,amplifier:0b}],Tags:["mob.healer","mobDEFini"],ArmorItems:[{id:"leather_boots",Count:1b},{id:"leather_leggings",Count:1b,tag:{display:{color:16751872}}},{id:"leather_chestplate",Count:1b,tag:{Trim:{pattern:"host",material:"copper"}}},{id:"smoker",Count:1b,tag:{Enchantments:[{}],targets:[]}}],HandItems:[{id:"campfire",Count:1b,tag:{Enchantments:[{}]}},{id:"soul_campfire",Count:1b,tag:{Enchantments:[{}]}}],Attributes:[{Name:"generic.attack_damage",Base:0.0d}],Passengers:[{id:"marker",Tags:["mob.healer","ticking"],data:{targets:[]}}]}

#scoreboard players set @e[type=#game:mobs,tag=mobDEFini] mobDEF 40
#tag @e[type=#game:mobs,tag=mobDEFini] remove mobDEFini

kill