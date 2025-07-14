execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.anvil
execute unless entity @s[tag=temp.anvil] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.anvil] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'anvil'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.anvil

playsound block.anvil.land master @a ~ ~ ~ 2 0.6
execute if predicate map:in_blue as @e[type=#game:mobs,distance=..20,predicate=map:in_blue] at @s run function game:player/warped_stick/anvil/slow
execute if predicate map:in_red as @e[type=#game:mobs,distance=..20,predicate=map:in_red] run function game:player/warped_stick/anvil/slow

execute if predicate map:in_blue as @e[type=#game:fly,distance=..20,predicate=map:in_blue] at @s run function game:player/warped_stick/anvil/fall
execute if predicate map:in_red as @e[type=#game:fly,distance=..20,predicate=map:in_red] at @s run function game:player/warped_stick/anvil/fall


execute if predicate map:in_blue as @e[type=#game:mobs,type=!#game:fly,distance=..20,predicate=map:in_blue,predicate=game:mobs/affected_by_anvil] at @s run function game:player/warped_stick/anvil/fall
execute if predicate map:in_red as @e[type=#game:mobs,type=!#game:fly,distance=..20,predicate=map:in_red,predicate=game:mobs/affected_by_anvil] at @s run function game:player/warped_stick/anvil/fall

data modify storage run log.log append value {content:{translate:"event.used_item",color:"green",with:[{translate:"item.anvil",color:"blue"}]}}
function lobby:spectator/sidebar/log/signed