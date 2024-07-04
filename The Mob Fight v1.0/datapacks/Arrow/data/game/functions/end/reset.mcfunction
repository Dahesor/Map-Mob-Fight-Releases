execute if score dataCollection Data matches 1.. run function game:end/store_scores
function game:utility/advancement/gamemodes
tp @a[team=red] @e[type=marker,limit=1,tag=red_spawn]
tp @a[team=blue] @e[type=marker,limit=1,tag=blue_spawn]
tp @a[tag=spectator] 0.50 58.5 110.5 -180.00 0.0
tag @a add returning
function game:end/count_down/force_stop
title @a times 5 30 10
title @a title {"text": "Game Over","color": "red","bold": false}
title @a subtitle " "
execute if score surrender red matches 0 run title @a subtitle {"translate":"action.surrender","color": "red"}
execute if score surrender blue matches 0 run title @a subtitle {"translate":"action.surrender","color": "red"}
execute as @a at @s run playsound arrow:event.game_over master @s
execute as @e[type=villager,tag=villager_marker] run data merge entity @s {Silent:1b}
kill @e[tag=map_notation]
kill @e[type=armor_stand,tag=shop_notation]
kill @e[type=end_crystal]
kill @e[tag=red_spawn,type=marker]
kill @e[tag=blue_spawn,type=marker]
kill @e[tag=repair,type=marker]
kill @e[tag=del]
kill @e[type=marker,tag=spawnCenterR]
execute at @e[type=marker,tag=ore_marker] run setblock ~ ~ ~ stone
kill @e[type=marker,tag=ore_marker]
kill @e[type=marker,tag=pigman_item]
kill @e[type=marker,tag=final_camera]
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
kill @e[type=item_display,tag=netherite_glow]
kill @e[type=villager,tag=villager_marker]
kill @e[type=marker,tag=mine]
kill @e[type=item_display,tag=mine]
execute as @e[type=villager,tag=villager_marker] run data merge entity @s {Silent:1b}
kill @e[type=marker,tag=villager_marker]
kill @e[type=zombified_piglin]
clear @a
tag @a remove last_winner
execute as @a run function ui:null
scoreboard players set game Data 0
scoreboard players set @a surrender 0
scoreboard players set crazyMode Data 0
scoreboard players set GameLength Data 0
scoreboard players set destroyMode Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a armor 2
scoreboard players set @a crossbow 1
scoreboard players set @a pickaxe 1
scoreboard players set @a deathSourceCD 0
scoreboard players set @a revive_cooldown -21
scoreboard players set @a harvest_level 0
scoreboard players set @a regenPotionUHC 5
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
scoreboard players set surrender red -1
scoreboard players set surrender blue -1
scoreboard players set magic_occult red 0
scoreboard players set magic_occult blue 0
scoreboard players set science_techno red 0
scoreboard players set science_techno blue 0
scoreboard players set society_populate red 0
scoreboard players set society_populate blue 0
scoreboard players set no_nausea red 0
scoreboard players set no_nausea blue 0
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
scoreboard players set creeperStorm red 0
scoreboard players set creeperStorm blue 0
scoreboard players set absoprtionCooldown red 0
scoreboard players set absoprtionCooldown blue 0
scoreboard players set additional_shop red 0
scoreboard players set additional_shop blue 0
scoreboard players set pigmanSlaves red 0
scoreboard players set pigmanSlaves blue 0
scoreboard players set techNetherite red 1
scoreboard players set techNetherite blue 1
scoreboard players set showWarning red 0
scoreboard players set showWarning blue 0
scoreboard players reset @a bossbar
scoreboard players reset player blue
scoreboard players reset player red
scoreboard players reset VILLAGER.super
scoreboard players reset playerCountScore
scoreboard players reset #twoThird
scoreboard players reset final_camera
fill 0 0 0 0 0 2 air
tag @a remove need_team
tag @a remove canBuyTotem
tag @a remove eliminated
bossbar set top:single visible false
schedule function game:plugin/speedy/red_end 1t replace
schedule function game:plugin/speedy/blue_end 1t replace
schedule function game:plugin/flag/red_end 1t replace
schedule function game:plugin/flag/blue_end 1t replace
schedule clear game:plugin/blindness/loop
schedule clear game:run/gamemodes/villager/sound/2
schedule clear game:run/gamemodes/villager/sound/3
data remove storage actionbar_mixer:json text[{id:"crossbow"}]
data remove storage actionbar_mixer:json text[{id:"villager_red"}]
data remove storage actionbar_mixer:json text[{id:"villager_blue"}]
data merge storage run {over_half:{red:0b,blue:0b},almost_win:{red:0b,blue:0b},first_kill:0b}
data modify storage run repair set value []
data modify storage run final_kill set value {}
data modify storage game:shop text.buy set value '{"translate":"info.shop_preview","color": "gray","italic": false}'
data modify storage game:shop text.select set value '{"translate":"info.shop_preview","color": "gray","italic": false}'
execute if data storage run map.resetCommand run data modify storage run macro_exe.run set from storage run map.resetCommand
execute if data storage run map.resetCommand run function game:utility/execute with storage run macro_exe
execute if data storage run bossbar_record[0] run function game:death/bossbar/remove_loop

gamerule doTileDrops true
gamerule naturalRegeneration true
gamemode adventure @a
effect clear @a
effect give @a jump_boost 6 128 true
effect give @a slowness 6 100 true
effect give @a instant_health 1 100 true
effect give @a saturation 1 100 true
effect give @a regeneration 20 10 true
effect give @a resistance 20 10 true

tag @a remove final_camera
tag @a remove using_UpRocket
tag @a remove using_UpRocket_1
tag @a remove using_UpRocket_2
tag @a remove using_UpRocket_3
tag @a remove sysano

function game:utility/realistic_ore/destory_scoreboards

execute if score GameMode Data matches 1 run function game:run/gamemodes/uhc/reset
execute if score GameMode Data matches 2 run function game:run/gamemodes/thunder/reset
execute if score GameMode Data matches 2 run weather thunder
execute as @a run attribute @s generic.attack_speed base set 4.3


