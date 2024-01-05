function game:plugin/score_copy
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.1 loot ui:buff/flag
item replace entity @s enderchest.2 with book{ui:{id:"need_tcho"},CustomModelData:110,display:{Name:'{"translate":"失明轰炸","color": "red","italic": false}',Lore:['""','{"translate":"对敌方进行","color": "gray","italic": false}','{"translate":"失明药水轰炸！","color": "gray","italic": false}','{"translate":"need_tcho"}','{"translate":"magic_occult","with":[" II"],"color": "gray","italic": false}','{"translate":"locked"}']}}
execute if score magic_occult calculator matches 2.. run item modify entity @s enderchest.2 ui:buff/blindness_attack
item replace entity @s enderchest.3 with golden_apple{ui:{id:"need_tcho"},CustomModelData:1,display:{Name:'{"translate":"圣灵守护","color": "red","italic": false}',Lore:['""','{"translate":"为全队成员","color": "gray","italic": false}','{"translate":"施加护盾","color": "gray","italic": false}','{"translate":"uptt"}','""','{"translate":"need_tcho"}','{"translate":"magic_occult","with":[" I"],"color": "gray","italic": false}','{"translate":"society_populate","with":[" II"],"color": "gray","italic": false}','{"translate":"locked"}']}}
execute if score magic_occult calculator matches 1.. if score society_populate calculator matches 2.. run item replace entity @s enderchest.3 with golden_apple{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate":"圣灵守护","color": "red","italic": false}',Lore:['""','{"translate":"为全队成员","color": "gray","italic": false}','{"translate":"施加护盾","color": "gray","italic": false}','""','{"translate":"status.cooling","color": "red","italic": false}']}}
execute if score magic_occult calculator matches 1.. unless score absoprtionCooldown calculator matches 1.. if score society_populate calculator matches 2.. run item replace entity @s enderchest.3 with golden_apple{ui:{id:-3b},CustomModelData:1,display:{Name:'{"translate":"圣灵守护","color": "gold","italic": false}',Lore:['""','{"translate":"为全队成员","color": "gray","italic": false}','{"translate":"施加护盾","color": "gray","italic": false}','""','{"translate":"使用冷却：85s","color": "red","italic": false}','""','{"translate":"price"}','{"translate":"dirt","with":["§a16"]}','{"translate":"gold","with":["§a16"]}','{"translate":"diamond","with":["§a1"]}']}}
loot replace entity @s enderchest.4 loot ui:buff/speedy
loot replace entity @s enderchest.5 loot ui:buff/no_nausea
loot replace entity @s enderchest.6 loot ui:background
loot replace entity @s enderchest.7 loot ui:background
loot replace entity @s enderchest.8 loot ui:buff/glowing
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
#loot replace entity @s enderchest.10 loot ui:buff/harvest_level
loot replace entity @s enderchest.10 loot ui:background
loot replace entity @s enderchest.11 loot ui:background
loot replace entity @s enderchest.12 loot ui:background
loot replace entity @s enderchest.13 loot ui:buff/upgrade_beam
loot replace entity @s enderchest.14 loot ui:buff/trade
loot replace entity @s enderchest.15 loot ui:background
item replace entity @s enderchest.16 with ender_chest{CustomModelData:1,display:{Name:'{"translate":"shop.shop_additions","color": "red","italic": false}',Lore:['""','{"translate":"在地图各处额外放置","color": "gray","italic": false}','{"translate":"3个末影箱","color": "gray","italic": false}','{"translate":"使你更便捷地打开商店","color": "gray","italic": false}','""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" II"],"color": "gray","italic": false}','""','{"translate":"locked"}']},ui:{id:'need_tcho'}}
execute if score society_populate calculator matches 2.. run item replace entity @s enderchest.16 with ender_chest{CustomModelData:1,ui:{id:16b},display:{Name:'{"translate":"shop.shop_additions","color": "green","italic": false}',Lore:['""','{"translate":"在地图各处额外放置","color": "gray","italic": false}','{"translate":"3个末影箱","color": "gray","italic": false}','{"translate":"使你更便捷地打开商店","color": "gray","italic": false}','""','{"translate":"price"}','{"translate":"dirt","with":["§a24"]}','{"translate":"copper","with":["§a5"]}','{"translate":"gold","with":["§a16"]}']}}
execute if score additional_shop calculator matches 1.. run item replace entity @s enderchest.16 with ender_chest{CustomModelData:1,UISpaceHolder:1b,display:{Name:'{"translate":"shop.shop_additions","color": "green","italic": false}',Lore:['""','{"translate":"在地图各处额外放置","color": "gray","italic": false}','{"translate":"3个末影箱","color": "gray","italic": false}','{"translate":"使你更便捷地打开商店","color": "gray","italic": false}','""','{"translate":"已经购买","color": "gold","italic": false}']}}
loot replace entity @s enderchest.17 loot ui:background
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.19 loot ui:buff/sharpness
loot replace entity @s enderchest.20 loot ui:buff/sweep
loot replace entity @s enderchest.21 loot ui:buff/efficiency
loot replace entity @s enderchest.22 loot ui:buff/proj_protection
loot replace entity @s enderchest.23 loot ui:buff/blast_protection
loot replace entity @s enderchest.24 loot ui:buff/power
loot replace entity @s enderchest.25 loot ui:background
loot replace entity @s enderchest.26 loot ui:background
