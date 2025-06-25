execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'mine',sub:'super'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.Mine.Super
execute if data entity @s SelectedItem.tag{warped_stick:{id:'mine',sub:'super'}} run tag @s add temp.Mine.Super

tag @s remove temp.Mine
execute if data entity @s {OnGround:0b} run return run function game:player/warped_stick/mine/in_air

tag @s add temp.Mine
execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.Mine
execute unless entity @s[tag=temp.Mine] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.Mine] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'mine'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.Mine

execute unless entity @s[tag=temp.Mine.Super] run execute summon marker at @s run function game:player/warped_stick/mine/new
execute if entity @s[tag=temp.Mine.Super] run execute summon marker at @s run function game:player/warped_stick/mine/new_super
execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1
tellraw @s [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"item.mine.used","color": "green"}]

tag @s remove temp.Mine.Super