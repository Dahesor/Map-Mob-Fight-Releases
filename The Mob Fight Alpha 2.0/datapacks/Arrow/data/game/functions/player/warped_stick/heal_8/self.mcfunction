execute if data entity @s SelectedItem.tag{warped_stick:{id:'instant_heal'}} run tag @s remove temp.Instant_Heal
execute unless entity @s[tag=temp.Instant_Heal] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.Instant_Heal] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'instant_heal'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1
tag @s remove temp.Instant_Heal

execute at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 0.7 1
execute at @s run particle glow ~ ~1 ~ 0.3 0.3 0.3 1 22 normal

effect give @s instant_health 1 0 true
effect give @s regeneration 6 1 true
effect give @s bad_omen 45 0 false
