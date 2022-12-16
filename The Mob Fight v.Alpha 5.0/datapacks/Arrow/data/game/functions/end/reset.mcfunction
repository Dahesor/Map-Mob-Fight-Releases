execute if score dataCollection Data matches 1.. run function game:end/store_scores
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
tag @a add returning
function game:end/count_down/force_stop
title @a times 5 30 10
title @a title {"text": "Game Over","color": "red","bold": false}
execute as @a at @s run playsound arrow:event.game_over master @s
kill @e[tag=map_notation]
kill @e[type=armor_stand,tag=shop_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
execute at @e[type=marker,tag=ore_marker] run setblock ~ ~ ~ stone
kill @e[type=marker,tag=ore_marker]
kill @e[type=marker,tag=pigman_item]
tp @e[type=#game:mobs] 0 -200 0
kill @e[type=item]
kill @e[type=#game:mobs]
kill @e[type=arrow]
kill @e[type=area_effect_cloud]
kill @e[type=marker,tag=blindness]
kill @e[type=marker,tag=altar_red]
kill @e[type=marker,tag=altar_blue]
kill @e[type=armor_stand,tag=blue_vand]
kill @e[type=armor_stand,tag=red_vand]
kill @e[type=armor_stand,tag=_vand]
clear @a
tag @a remove last_winner
execute as @a run function ui:null
scoreboard players set game Data 0
scoreboard players set crazyMode Data 0
scoreboard players set GameLength Data 0
scoreboard players set destroyMode Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
scoreboard players set @a pickaxe 1
scoreboard players set @a deathSourceCD 0
scoreboard players set @a revive_cooldown 0
scoreboard players set @a harvest_level 0
scoreboard players set onSpeedyEffect red 0
scoreboard players set onSpeedyEffect blue 0
scoreboard players set sharpness red 0
scoreboard players set sharpness blue 0
scoreboard players set sweep red 0
scoreboard players set sweep blue 0
scoreboard players set efficiency red 0
scoreboard players set efficiency blue 0
scoreboard players set blast_protection red 0
scoreboard players set blast_protection blue 0
scoreboard players set proj_protection red 0
scoreboard players set proj_protection blue 0
scoreboard players set power red 0
scoreboard players set power blue 0
scoreboard players set magic_occult red 0
scoreboard players set magic_occult blue 0
scoreboard players set science_techno red 0
scoreboard players set science_techno blue 0
scoreboard players set society_populate red 0
scoreboard players set society_populate blue 0
scoreboard players set score red 0
scoreboard players set score blue 0
scoreboard players set beemCD red 264
scoreboard players set beemCD blue 264
scoreboard players set beemLevel red 1
scoreboard players set beemLevel blue 1
scoreboard players set stored_netherite red 0
scoreboard players set stored_netherite blue 0
scoreboard players set dirtTime red 40
scoreboard players set dirtTime blue 40
scoreboard players set crystal_count red 2
scoreboard players set crystal_count blue 2
scoreboard players set absoprtionCooldown red 0
scoreboard players set absoprtionCooldown blue 0
scoreboard players set additional_shop red 0
scoreboard players set additional_shop blue 0
scoreboard players set pigmanSlaves red 0
scoreboard players set pigmanSlaves blue 0
fill 0 0 0 0 0 2 air
tag @a remove need_team
tag @a remove canBuyTotem
bossbar set top:single visible false
schedule function game:plugin/speedy/red_end 1t replace
schedule function game:plugin/speedy/blue_end 1t replace
schedule clear game:plugin/flag/red_end
schedule clear game:plugin/flag/blue_end
schedule clear game:plugin/blindness/loop
data remove storage actionbar_mixer:json text[{id:"crossbow"}]

gamemode adventure @a
effect clear @a
effect give @a jump_boost 6 128 true
effect give @a slowness 6 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true
effect give @a regeneration 20 10 true
effect give @a resistance 20 10 true