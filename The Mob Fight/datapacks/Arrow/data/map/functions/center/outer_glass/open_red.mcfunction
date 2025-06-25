scoreboard players operation #temp map.CENTER.falling_distance = center%outer_glass red
scoreboard players operation #temp map.CENTER.falling_distance /= #20 calculator
execute positioned 13 48 -12 run playsound block.piston.contract master @a ~ ~ ~
execute positioned 13 48 -29 run playsound block.piston.contract master @a ~ ~ ~
execute positioned 13 51 -21 run playsound block.piston.contract master @a ~ ~ ~
execute if score #temp map.CENTER.falling_distance matches 1 run fill 13 42 -30 13 42 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 2 run fill 13 43 -30 13 43 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 3 run fill 13 44 -30 13 44 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 4 run fill 13 45 -30 13 45 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 5 run fill 13 46 -30 13 46 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 6 run fill 13 47 -30 13 47 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 7 run fill 13 48 -30 13 48 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 8 run fill 13 49 -30 13 49 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 9 run fill 13 50 -30 13 50 -11 air replace glass
execute if score #temp map.CENTER.falling_distance matches 9.. run scoreboard players set center%window_closed red 0
execute if score #temp map.CENTER.falling_distance matches 9.. run scoreboard players set center%outer_glass red -1200
execute if score #temp map.CENTER.falling_distance matches 9.. run setblock 48 42 -17 air
execute if score #temp map.CENTER.falling_distance matches 9.. run data modify block 46 42 -17 front_text.messages[0] set value '{"translate":"map.center.outglass.open","color":"light_purple"}'