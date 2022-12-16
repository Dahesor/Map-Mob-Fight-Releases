#

#>
#@private
#define score_holder #random$luc


tellraw @s {"translate":"message.traded_with_lucifer.lucifer_did_something","color": "red"}
summon marker ~ ~ ~ {Tags:["luucifffier_fa_r"]}
execute store result score #random$luc calculator run data get entity @e[type=marker,tag=luucifffier_fa_r,limit=1] UUID[0]
kill @e[type=marker,tag=luucifffier_fa_r]

scoreboard players operation #random$luc calculator %= #16 calculator

execute if score #random$luc calculator matches 0 run clear @s dirt 32
execute if score #random$luc calculator matches 1 run clear @s dirt 10
execute if score #random$luc calculator matches 2 run clear @s diamond 12
execute if score #random$luc calculator matches 3 run clear @s netherite_ingot 1
execute if score #random$luc calculator matches 4 run clear @s lapis_lazuli 20
execute if score #random$luc calculator matches 5 run effect give @s nausea 30 0
execute if score #random$luc calculator matches 6 run effect give @s poison 30 0
execute if score #random$luc calculator matches 7 at @s run summon zombie
execute if score #random$luc calculator matches 7 at @s run summon zombie
execute if score #random$luc calculator matches 7 at @s run summon zombie
execute if score #random$luc calculator matches 8 run effect give @s blindness 40 0
execute if score #random$luc calculator matches 9 run effect give @s slowness 20 2
execute if score #random$luc calculator matches 10 run effect give @s mining_fatigue 24 1
execute if score #random$luc calculator matches 11 run effect give @s bad_omen 70 0
execute if score #random$luc calculator matches 12 run effect give @s weakness 60 0
execute if score #random$luc calculator matches 13 run effect give @s hunger 30 1
execute if score #random$luc calculator matches 13 at @s run summon husk
execute if score #random$luc calculator matches 14 run effect give @s glowing 120 0
execute if score #random$luc calculator matches 15 run clear @s copper_ingot 20

execute unless score #random$luc calculator matches 5..10 run clear @s dirt 10
execute unless score #random$luc calculator matches 5..10 run clear @s iron_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s gold_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s lapis_lazuli 5
execute unless score #random$luc calculator matches 5..10 run clear @s copper_ingot 5
execute unless score #random$luc calculator matches 5..10 run clear @s diamond 5
execute unless score #random$luc calculator matches 5..10 run clear @s bread
execute unless score #random$luc calculator matches 5..10 run clear @s cooked_beef
execute unless score #random$luc calculator matches 5..10 run kill @e[type=item,nbt={Item:{id:"minecraft:bread"}}]
execute unless score #random$luc calculator matches 5..10 run kill @e[type=item,nbt={Item:{id:"minecraft:cooked_beef"}}]