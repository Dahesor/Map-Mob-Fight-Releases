execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.power_star
execute unless entity @s[tag=temp.power_star] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.power_star] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'power_star'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.power_star

effect give @s resistance 22 10 true
effect give @s strength 22 1 false
effect give @s jump_boost 22 1 false
effect give @s speed 22 1 false
stopsound @s master arrow:item.star
playsound arrow:item.star master @s ~ ~ ~ 1 1 1
scoreboard players set @s Item.power_star 440