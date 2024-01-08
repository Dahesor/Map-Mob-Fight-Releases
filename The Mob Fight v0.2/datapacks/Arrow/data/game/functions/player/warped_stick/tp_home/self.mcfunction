execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.TP_Home
execute unless entity @s[tag=temp.TP_Home] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.TP_Home] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'tp_home'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.TP_Home


tp @s[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @s[team=blue] @e[type=marker,limit=1,tag=blue_spawn]

execute at @s run playsound entity.enderman.teleport master @a
tellraw @s {"text": "Hoosh!","color": "light_purple"}