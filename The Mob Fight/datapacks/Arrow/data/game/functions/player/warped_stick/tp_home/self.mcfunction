execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.TP_Home
execute unless entity @s[tag=temp.TP_Home] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.TP_Home] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'tp_home'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.TP_Home

tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]

execute at @s run playsound entity.enderman.teleport master @a
tellraw @s {"text": "Hoosh!","color": "light_purple"}

effect give @s hero_of_the_village 5 0 false
effect give @s absorption 30 2 true
effect give @s fire_resistance 30 0 true
effect give @s resistance 3 10 true
effect give @s regeneration 24 1
effect give @s strength 20 1
effect give @s haste 20 2
effect give @s speed 24 0
execute at @s run playsound item.totem.use master @s ~ ~ ~

title @s times 0 35 15
title @s title {"text":"Z","font": "icon"}
title @s subtitle {"translate":"Hoosh!","color": "light_purple"}

data modify storage run log.log append value {content:{translate:"event.used_item",color:"green",with:[{translate:"回城符咒",color:"red"}]}}
function lobby:spectator/sidebar/log/signed