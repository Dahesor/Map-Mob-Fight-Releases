scoreboard players operation #temp map.CENTER.falling_distance = center%outer_glass blue
scoreboard players operation #temp map.CENTER.falling_distance /= #20 calculator
execute positioned -13 48 11 run playsound block.piston.extend master @a ~ ~ ~
execute positioned -13 48 28 run playsound block.piston.extend master @a ~ ~ ~
execute positioned -13 51 20 run playsound block.piston.extend master @a ~ ~ ~
execute if score #temp map.CENTER.falling_distance matches 1 run fill -13 50 29 -13 50 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 2 run fill -13 49 29 -13 49 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 3 run fill -13 48 29 -13 48 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 4 run fill -13 47 29 -13 47 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 5 run fill -13 46 29 -13 46 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 6 run fill -13 45 29 -13 45 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 7 run fill -13 44 29 -13 44 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 8 run fill -13 43 29 -13 43 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 9 run fill -13 42 29 -13 52 10 glass keep
execute if score #temp map.CENTER.falling_distance matches 9.. run scoreboard players set center%window_closed blue 1
execute if score #temp map.CENTER.falling_distance matches 9.. run scoreboard players set center%outer_glass blue -1200
execute if score #temp map.CENTER.falling_distance matches 9.. run setblock -48 42 16 air
execute if score #temp map.CENTER.falling_distance matches 9.. run data modify block -46 42 16 front_text.messages[0] set value '{"translate":"map.center.outglass.close","color":"gold"}'
