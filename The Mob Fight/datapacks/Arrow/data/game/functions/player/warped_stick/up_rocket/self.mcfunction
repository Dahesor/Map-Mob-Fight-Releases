effect give @s levitation 1 127 true
effect give @s jump_boost 8 127 true
particle cloud ~ ~ ~ 0.5 0.2 0.5 0 180 normal @a

execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.Up_Rocket
execute unless entity @s[tag=temp.Up_Rocket] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.Up_Rocket] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'up_rocket'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.Up_Rocket
#>
# Detected To Use Instant Heal NORMAL
# @internal function game:player/
#define tag using_UpRocket
tag @s add using_UpRocket
tag @s add using_UpRocket_1

playsound entity.firework_rocket.launch player @a ~ ~ ~ 1 1 1
playsound entity.firework_rocket.launch player @a ~ ~10 ~ 1 1 1