function game:shop/netherite/fee/specific_check
execute as @e[type=!player,scores={hpPotionCD=8..}] run function game:plugin/kill
scoreboard players add @e[type=!player,type=!#arrows,type=!marker,predicate=map:in_void] hpPotionCD 1
effect give @a[predicate=map:in_void] wither 1 0 true
effect give @a[predicate=map:in_void] instant_damage 1 0 true
effect give @e[type=#game:undeads,predicate=map:in_void] instant_health 1 0 true
effect give @e[nbt={Brain:{}},type=!#game:undeads,predicate=map:in_void,type=!player] instant_damage 1 0 true
kill @e[type=slime,nbt={Size:0}]
kill @e[type=item,predicate=map:in_void]
kill @e[type=!player,predicate=map:on_wait]
execute unless score debug Data matches 1.. run effect give @a[predicate=map:in_blue,team=red] instant_damage 1 1 true
execute unless score debug Data matches 1.. run effect give @a[predicate=map:in_red,team=blue] instant_damage 1 1 true
effect give @a[gamemode=adventure] haste 2 1 true
effect clear @a dolphins_grace
execute as @e[tag=intelligent_name] at @s if entity @a[distance=..10] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=intelligent_name] at @s unless entity @a[distance=..10] run data merge entity @s {CustomNameVisible:0b}
scoreboard players remove absoprtionCooldown red 1
scoreboard players remove absoprtionCooldown blue 1
execute if score absoprtionCooldown red matches 0 as @a[scores={UI=70},team=red] run function ui:actions/buff/anchor
execute if score absoprtionCooldown blue matches 0 as @a[scores={UI=70},team=blue] run function ui:actions/buff/anchor
execute if score no_nausea red matches 1.. run effect clear @a[team=red] nausea
execute if score no_nausea blue matches 1.. run effect clear @a[team=blue] nausea
execute as @e[type=zombified_piglin,tag=pigman_slave] run function game:run/resources/pigman/self
execute as @e[type=#game:mobs,tag=!mob_resolved] run function game:run/mob_tick/team
effect give @e[type=#game:mobs,tag=in_flag_effect] strength 2 0

execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/second

execute if score surrender red matches 1.. run function game:end/surrender/red_surrendering
execute if score surrender blue matches 1.. run function game:end/surrender/blue_surrendering
execute as @a[scores={UI=9999}] run function ui:actions/settings/get_surrender

execute if score surrender red matches 0 run scoreboard players operation score blue = TargetScore Options
execute if score surrender blue matches 0 run scoreboard players operation score red = TargetScore Options
