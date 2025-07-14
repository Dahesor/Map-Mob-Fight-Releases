execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.anti_arrow
execute unless entity @s[tag=temp.anti_arrow] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.anti_arrow] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'anti_arrow'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.anti_arrow

playsound entity.experience_orb.pickup master @s ~ ~ ~
scoreboard players set @s Item.arrow_shield 360
attribute @s generic.armor_toughness modifier add a-b-c-d-e '"\\ue905"' 0.0 add

data modify storage run log.log append value {content:{translate:"event.used_item",color:"green",with:[{translate:"item.anti_arrow",color:"blue"}]}}
function lobby:spectator/sidebar/log/signed