 

execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'instant_heal'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.Instant_Heal
execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'up_rocket'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.Up_Rocket
execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'tp_home'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.TP_Home
execute if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'flare'}} unless data entity @s SelectedItem.tag{right_click:1b} run tag @s add temp.Flare

execute if data entity @s SelectedItem.tag{warped_stick:{id:'instant_heal'}} run tag @s add temp.Instant_Heal
execute if data entity @s SelectedItem.tag{warped_stick:{id:'up_rocket'}} run tag @s add temp.Up_Rocket
execute if data entity @s SelectedItem.tag{warped_stick:{id:'tp_home'}} run tag @s add temp.TP_Home
execute if data entity @s SelectedItem.tag{warped_stick:{id:'flare'}} run tag @s add temp.Flare







execute if entity @s[tag=temp.Up_Rocket] at @s run function game:player/warped_stick/up_rocket/self
execute if entity @s[tag=temp.TP_Home] at @s run function game:player/warped_stick/tp_home/self
execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run tellraw @s {"translate":"chat.instant_heal_cooldown","color": "red"}
execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] at @s run playsound minecraft:entity.enderman.teleport master @s ~ ~ ~ 0.9 0.2 0.7
execute if entity @s[tag=temp.Instant_Heal] if entity @s[nbt={active_effects:[{id:"minecraft:bad_omen"}]}] run tag @s remove temp.Instant_Heal
execute if entity @s[tag=temp.Instant_Heal] run function game:player/warped_stick/heal_8/self
execute if entity @s[tag=temp.Flare,team=red] at @s run function game:player/warped_stick/flare/red
execute if entity @s[tag=temp.Flare,team=blue] at @s run function game:player/warped_stick/flare/blue



scoreboard players set @s warped_stick 0



#>
# Detected To Use Instant Heal NORMAL
# @internal function game:player/
#define tag temp.Instant_Heal

#>
# Detected To Use Up Rocket
# @internal function game:player/
#define tag temp.Up_Rocket 

#>
# Detected To Use Up Rocket
# @internal function game:player/
#define tag temp.TP_Home

#>
# Detected To Use Up Rocket
# @internal function game:player/
#define tag temp.Flare