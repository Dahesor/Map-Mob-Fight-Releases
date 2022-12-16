scoreboard players remove @s revive_cooldown 1
effect give @s blindness 2 0 true
effect give @s resistance 10 30 true
effect give @s resistance 10 10 true
effect give @s regeneration 24 1
effect give @s strength 20 1
effect give @s haste 20 2
effect give @s speed 24 0
tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
execute if score @s revive_cooldown matches ..0 run effect give @s hero_of_the_village 5 0 false
execute if score @s revive_cooldown matches ..0 run gamemode adventure
execute if score @s revive_cooldown matches ..0 at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~
execute if score @s revive_cooldown matches ..0 run tellraw @s [{"text": "| | ","color": "aqua"},{"translate":"message.revived","color": "green"}]