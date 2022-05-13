execute as @e[type=!player,scores={hpPotionCD=8..}] run function game:plugin/kill
scoreboard players add @e[type=!player,type=!#arrows,type=!marker,predicate=map:in_void] hpPotionCD 1
effect give @a[predicate=map:in_void] wither 1 0 true
effect give @a[predicate=map:in_void] instant_damage 1 0 true
effect give @e[type=#game:undeads,predicate=map:in_void] instant_health 1 0 true
effect give @e[nbt={Brain:{}},type=!#game:undeads,predicate=map:in_void,type=!player] instant_damage 1 0 true
kill @e[type=slime,nbt={Size:0}]
kill @e[type=item,predicate=map:in_void]
kill @e[type=!player,predicate=map:on_wait]
effect give @a[predicate=map:in_blue,team=red,name=!"Dahesor"] instant_damage 1 1 true
effect give @a[predicate=map:in_red,team=blue,name=!"Dahesor"] instant_damage 1 1 true
effect give @a[gamemode=adventure] haste 2 1 true
execute as @e[tag=intelligent_name] at @s if entity @a[distance=..10] run data merge entity @s {CustomNameVisible:1b}
execute as @e[tag=intelligent_name] at @s unless entity @a[distance=..10] run data merge entity @s {CustomNameVisible:0b}