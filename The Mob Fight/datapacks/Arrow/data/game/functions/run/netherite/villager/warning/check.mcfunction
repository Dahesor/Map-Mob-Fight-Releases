function game:run/netherite/villager/warning/blue
function game:run/netherite/villager/warning/red

execute if score showWarning blue matches 1.. if score #loop_20 calculator matches 1 as @a[team=blue,scores={SETTING.villager=1}] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5
execute if score showWarning red matches 1.. if score #loop_20 calculator matches 1 as @a[team=red,scores={SETTING.villager=1}] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5


execute if score showWarning blue matches 1..61 if score #loop_20 calculator matches 1 as @a[team=blue,scores={SETTING.villager=2}] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5
execute if score showWarning red matches 1..61 if score #loop_20 calculator matches 1 as @a[team=red,scores={SETTING.villager=2}] at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5

execute if score showWarning blue matches 1..61 if score #loop_20 calculator matches 1 as @a[team=blue] unless score @s SETTING.villager matches 1.. at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5
execute if score showWarning red matches 1..61 if score #loop_20 calculator matches 1 as @a[team=red] unless score @s SETTING.villager matches 1.. at @s run playsound minecraft:block.note_block.cow_bell record @s ~ ~ ~ 0.4 0.5