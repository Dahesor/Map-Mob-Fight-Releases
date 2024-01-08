function game:run/gamemodes/thunder/events/check_cell

execute if entity @s[tag=THUNDER.under_sky] run summon firework_rocket ~0.5 ~ ~0.5 {Invulnerable:1b,Life:0,LifeTime:100,ShotAtAngle:0b,FireworksItem:{id:"minecraft:warped_fungus_on_a_stick",Count:1b,tag:{Fireworks:{Explosions:[]},CustomModelData:6}},Tags:["THUNDER.blue_flare"]}
execute unless entity @s[tag=THUNDER.under_sky] run tellraw @s {"translate":"flare.failed","color": "red"}
execute unless entity @s[tag=THUNDER.under_sky] at @s run playsound entity.enderman.teleport master @s ~ ~ ~ 1 1.3
execute if data entity @s SelectedItem.tag{right_click:1b} run tag @s remove temp.Flare
execute unless entity @s[tag=temp.Flare] if entity @s[tag=THUNDER.under_sky] run item replace entity @s weapon with air 1
execute if entity @s[tag=temp.Flare,tag=THUNDER.under_sky] if data entity @s Inventory[{Slot:-106b}].tag{warped_stick:{id:'flare'}} unless data entity @s SelectedItem.tag{right_click:1b} run item replace entity @s weapon.offhand with air 1

tag @s remove temp.Flare
tag @s remove THUNDER.under_sky