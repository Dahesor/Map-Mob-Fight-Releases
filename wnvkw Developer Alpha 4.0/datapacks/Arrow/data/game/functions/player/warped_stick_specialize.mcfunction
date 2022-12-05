
#>
# Detected To Use Instant Heal NORMAL
# @private
#define tag temp.Instant_Heal

execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'instant_heal'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.Instant_Heal
execute if data entity @s SelectedItem.tag{warped_stick:{id:'instant_heal'}} run tag @s add temp.Instant_Heal










execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={ActiveEffects:[{Id:31b}]}] run tellraw @s {"translate":"chat.instant_heal_cooldown","color": "red"}
execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={ActiveEffects:[{Id:31b}]}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.9 0.2 0.7
execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={ActiveEffects:[{Id:31b}]}] run tag @s remove temp.Instant_Heal
execute if entity @s[tag=temp.Instant_Heal] run function game:player/warped_stick/heal_8/self



scoreboard players set @s warped_stick 0