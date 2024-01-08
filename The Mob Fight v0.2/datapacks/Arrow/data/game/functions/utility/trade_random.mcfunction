#

#>
#@private
#define score_holder #random$luc


tellraw @s {"translate":"message.traded_with_lucifer.lucifer_did_something","color": "red"}
execute store result score #random$luc calculator run random value 0..15
execute store result score #random$luc2 calculator run random value 0..100
clear @s milk_bucket
execute if score #random$luc calculator matches 0 run clear @s dirt 64
execute if score #random$luc calculator matches 1 run clear @s dirt 36
execute if score #random$luc calculator matches 1 run summon tnt ~ ~ ~ {fuse:20s,Tags:["normal"]}
execute if score #random$luc calculator matches 2 run clear @s diamond 12
execute if score #random$luc calculator matches 3 run clear @s netherite_ingot 1
execute if score #random$luc calculator matches 4 run clear @s lapis_lazuli 20
execute if score #random$luc calculator matches 5 run effect give @s nausea 30 0
execute if score #random$luc calculator matches 6 run effect give @s poison 30 0
execute if score #random$luc calculator matches ..6 run summon blaze
execute if score #random$luc calculator matches ..6 run summon blaze
execute if score #random$luc calculator matches ..6 run summon blaze
execute if score #random$luc calculator matches ..6 run summon blaze
execute if score #random$luc calculator matches ..6 run summon vex
execute if score #random$luc calculator matches ..6 run summon vex
execute if score #random$luc calculator matches ..6 run effect give @s wither 5 1
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches ..25 at @s run summon zombie ~ ~ ~ {HandItems:[{Count:1b,id:"diamond_sword",tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}}]}
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches 26..50 at @s run summon zombie ~ ~ ~ {HandItems:[{Count:1b,id:"diamond_sword",tag:{Enchantments:[{id:"minecraft:fire_aspect",lvl:1}]}}]}
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches 51..75 at @s run summon zombie ~ ~ ~ {HandItems:[{Count:1b,id:"diamond_sword",tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1}]}}]}
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches 76..90 at @s run summon zombie ~ ~ ~ {HandItems:[{Count:1b,id:"netherite_sword",tag:{Enchantments:[{id:"minecraft:vanishing_curse",lvl:1}]}}]}
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches 91..100 at @s run summon zombie ~ ~ ~ {HandItems:[{Count:1b,id:"diamond_axe",tag:{Enchantments:[{id:"minecraft:sharpness",lvl:1}]}}]}
execute if score #random$luc calculator matches 7 unless score #random$luc2 calculator matches 81..100 at @s run summon zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"leather_boots",Count:1b},{},{id:"iron_chestplate",Count:1b},{}]}
execute if score #random$luc calculator matches 7 if score #random$luc2 calculator matches 91..100 at @s run summon zombie ~ ~ ~ {IsBaby:1b,ArmorItems:[{id:"leather_boots",Count:1b,tag:{Enchantments:[{id:"minecraft:soul_speed",lvl:2}]}},{},{id:"iron_chestplate",Count:1b},{}]}
execute if score #random$luc calculator matches 7 at @s run summon zombie ~ ~ ~ {ArmorItems:[{},{},{},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"stone_sword",Count:1b}]}
execute if score #random$luc calculator matches 7 at @s run summon zombie ~ ~ ~ {ArmorItems:[{},{},{id:"chainmail_chestplate",Count:1b},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"golden_sword",Count:1b}]}
execute if score #random$luc calculator matches 7 at @s run summon zombie ~ ~ ~
execute if score #random$luc calculator matches 7 at @s run summon zombie ~ ~ ~
execute if score #random$luc calculator matches 7 at @s run summon zombie ~ ~ ~
execute if score #random$luc calculator matches 8 run effect give @s darkness 40 0
execute if score #random$luc calculator matches 8 run summon illusioner
execute if score #random$luc calculator matches 9 run effect give @s slowness 20 2
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 9 run summon phantom
execute if score #random$luc calculator matches 10 run effect give @s mining_fatigue 240 1
execute if score #random$luc calculator matches 10 run effect give @s weakness 120 2
execute if score #random$luc calculator matches 11 run effect give @s bad_omen infinite 0
execute if score #random$luc calculator matches 11 run effect give @s hunger infinite 3
execute if score #random$luc calculator matches 12 run effect give @s weakness 60 0 true
execute if score #random$luc calculator matches 12 run effect give @s darkness 120 0 true
execute if score #random$luc calculator matches 10..12 run effect give @s slowness 10 20 true
execute if score #random$luc calculator matches 10..11 run effect give @s darkness 20 20 true
execute if score #random$luc calculator matches 10..12 run summon skeleton ~1 ~ ~1
execute if score #random$luc calculator matches 10..12 run summon skeleton ~1 ~ ~-1
execute if score #random$luc calculator matches 10..12 run summon skeleton ~-1 ~ ~-1
execute if score #random$luc calculator matches 10..12 run summon skeleton ~ ~1 ~
execute if score #random$luc calculator matches 13 run effect give @s hunger 30 1
execute if score #random$luc calculator matches 13 at @s run summon husk ~ ~ ~ {ArmorItems:[{},{id:"netherite_leggings",Count:1b},{id:"chainmail_chestplate",Count:1b},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"iron_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}}]}
execute if score #random$luc calculator matches 13 at @s run summon husk ~ ~ ~ {ArmorItems:[{},{},{id:"chainmail_chestplate",Count:1b},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"stone_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}}]}
execute if score #random$luc calculator matches 13 at @s run summon husk ~ ~ ~ {ArmorItems:[{},{},{id:"chainmail_chestplate",Count:1b},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"golden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:1}]}}]}
execute if score #random$luc calculator matches 13 at @s run summon husk ~ ~ ~ {ArmorItems:[{},{},{id:"chainmail_chestplate",Count:1b},{id:"netherite_helmet",Count:1b}],HandItems:[{id:"wooden_sword",Count:1b,tag:{Enchantments:[{id:"minecraft:knockback",lvl:2}]}}]}
execute if score #random$luc calculator matches 13 at @s run clear bread
execute if score #random$luc calculator matches 13 at @s run clear cooked_beef
execute if score #random$luc calculator matches 14 run effect give @s glowing infinite 0
execute if score #random$luc calculator matches 14 run summon elder_guardian
execute if score #random$luc calculator matches 15 run effect give @s poison infinite 0

execute unless score #random$luc calculator matches 5..10 run clear @s dirt 10
execute unless score #random$luc calculator matches 5..10 run clear @s iron_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s gold_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s lapis_lazuli 5
execute unless score #random$luc calculator matches 5..10 run clear @s copper_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s diamond 5
execute unless score #random$luc calculator matches 5..10 run clear @s bread
execute unless score #random$luc calculator matches 5..10 run clear @s cooked_beef
execute unless score #random$luc calculator matches 13..15 run kill @e[type=item,nbt={Item:{id:"minecraft:bread"}}]
execute unless score #random$luc calculator matches 13..15 run kill @e[type=item,nbt={Item:{id:"minecraft:cooked_beef"}}]