execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.crystal_marker
execute unless entity @s[tag=temp.crystal_marker] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.crystal_marker] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'crystal_marker'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.crystal_marker

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7 1

summon potion ~ ~1.8 ~ {Item:{id:"lingering_potion",Count:1b,tag:{custom_potion_effects:[{id:"minecraft:dolphins_grace",amplifier:4b,duration:2,show_particles:0b}],CustomPotionColor:16645629,CustomModelData:1}},Tags:["crystal_marker","new","ticking"]}
execute as @e[type=potion,tag=crystal_marker,distance=..2,tag=new,limit=1] positioned ^ ^ ^8 positioned ~ ~0.4 ~ run function dtm:calculate_motion
execute as @e[type=potion,tag=crystal_marker,distance=..2,tag=new,limit=1] store result entity @s Air short 1 run scoreboard players get #loop_20 calculator

data modify storage run log.log append value {content:{translate:"event.used_item",color:"green",with:[{translate:"item.crystal_marker",color:"dark_purple"}]}}
function lobby:spectator/sidebar/log/signed