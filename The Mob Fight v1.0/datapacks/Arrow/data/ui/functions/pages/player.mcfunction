function game:plugin/score_copy
function ui:null
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.1 loot ui:player/sword
loot replace entity @s enderchest.2 loot ui:player/armor
loot replace entity @s enderchest.3 loot ui:player/crossbow
loot replace entity @s enderchest.4 loot ui:player/pickaxe

item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},CustomModelData:1,display:{Name:'{"translate":"返回","color": "red","italic": false}'}}

loot replace entity @s enderchest.10 loot ui:player/mine

item replace entity @s enderchest.11 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"magic_occult","with":[" II"],"color": "gray","italic": false}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. if score magic_occult calculator matches 2.. run loot replace entity @s enderchest.11 loot ui:player/instant_heal
execute if score GameMode Data matches 1 run item replace entity @s enderchest.11 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"瞬间治疗符","color": "red","italic": false}',Lore:['""','{"translate":"mode_locked"}','""','{"translate":"locked"}']}}

loot replace entity @s enderchest.12 loot ui:player/potions/regen_master
loot replace entity @s enderchest.13 loot ui:player/potions/strength
loot replace entity @s enderchest.14 loot ui:player/potions/speed
loot replace entity @s enderchest.15 loot ui:player/potions/fire_resistence
loot replace entity @s enderchest.16 loot ui:player/repair_tool
loot replace entity @s enderchest.17 loot ui:player/flare
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,CustomModelData:1,display:{Name:'{"translate": "...","color":"gray"}'}}

execute unless score game Data matches 1.. run item replace entity @s enderchest.19 with bread{ui:{id:"bread"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.bread","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a1"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}
execute if score game Data matches 1.. run item replace entity @s enderchest.19 with bread{ui:{id:"bread"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.bread","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a1"]}','{"translate":"点击选择","color": "yellow","italic": false}','{"translate":"Shift+点击购买16个","color": "yellow","italic": false}']}}

execute if score society_populate calculator matches 1 run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a7"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score society_populate calculator matches 2 run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a6"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score society_populate calculator matches 3.. run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a5"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute unless score society_populate calculator matches 1.. run item replace entity @s enderchest.20 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score game Data matches 0 run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},CustomModelData:1,display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a5"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}

loot replace entity @s enderchest.21 loot ui:player/apple_master

loot replace entity @s enderchest.22 loot ui:player/milk

item replace entity @s enderchest.23 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. run item replace entity @s enderchest.23 with arrow{ui:{id:"arrow"},CustomModelData:7,display:{Name:'[{"translate":"item.arrow.normal_arrow","color": "white","italic": false},{"text": " × 16"}]',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a6"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score game Data matches 0 run item replace entity @s enderchest.23 with arrow{ui:{id:"arrow"},CustomModelData:7,display:{Name:'[{"translate":"item.arrow.normal_arrow","color": "white","italic": false},{"text": " × 16"}]',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a6"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}

item replace entity @s enderchest.24 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','{"translate":"science_techno","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. if score science_techno calculator matches 1.. run item replace entity @s enderchest.24 with golden_shovel{ui:{id:"gold_shovel"},CustomModelData:1,HideFlags:2,display:{Name:'{"translate":"item.minecraft.golden_shovel","color": "green","italic": false}',Lore:['""','{"translate":"快速挖掘泥土，可惜太脆","color": "gray","italic": false}','""','{"translate":"price"}','{"translate":"gold","with":["§a5"]}','{"translate":"copper","with":["§a4"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score game Data matches 0 run item replace entity @s enderchest.24 with golden_shovel{ui:{id:"gold_shovel"},CustomModelData:1,HideFlags:2,display:{Name:'{"translate":"item.minecraft.golden_shovel","color": "green","italic": false}',Lore:['""','{"translate":"快速挖掘泥土，可惜太脆","color": "gray","italic": false}','""','{"translate":"price"}','{"translate":"gold","with":["§a5"]}','{"translate":"copper","with":["§a4"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}

item replace entity @s enderchest.25 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"science_techno","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score science_techno calculator matches 1.. run item replace entity @s[team=red] enderchest.25 with book{Damage:200,CustomModelData:105,ui:{id:"shield"},HideFlags:2,display:{Name:'{"translate":"旧盾牌","color": "white","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a8"]}','{"translate":"copper","with":["§a5"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score science_techno calculator matches 1.. run item replace entity @s[team=blue] enderchest.25 with book{Damage:200,CustomModelData:106,ui:{id:"shield"},HideFlags:2,display:{Name:'{"translate":"旧盾牌","color": "white","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a8"]}','{"translate":"copper","with":["§a5"]}','{"translate":"点击选择","color": "yellow","italic": false}']}}
execute if score game Data matches 0 run item replace entity @s enderchest.25 with book{Damage:200,CustomModelData:105,ui:{id:"shield"},HideFlags:2,display:{Name:'{"translate":"旧盾牌","color": "white","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a8"]}','{"translate":"copper","with":["§a5"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}
execute if score game Data matches 0 run item replace entity @s[team=blue] enderchest.25 with book{Damage:200,CustomModelData:106,ui:{id:"shield"},HideFlags:2,display:{Name:'{"translate":"旧盾牌","color": "white","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a8"]}','{"translate":"copper","with":["§a5"]}','{"translate":"info.shop_preview","color": "gray","italic": false}']}}

item replace entity @s enderchest.26 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" III"],"color": "gray","italic": false}','{"translate":"magic_occult","with":[" III"],"color": "gray","italic": false}','{"translate":"science_techno","with":[" III"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score magic_occult calculator matches 3.. if score society_populate calculator matches 3.. if score science_techno calculator matches 3.. run item replace entity @s enderchest.26 with totem_of_undying{ui:{id:"undie"},CustomModelData:1,display:{Lore:['""','{"translate":"该物品限购1次","color": "red","italic": false}','""','{"translate":"price"}','{"translate":"gold","with":[" §a64"]}','{"translate":"lapis","with":[" §a64"]}','{"translate":"diamond","with":[" §a32"]}']}}
execute if score game Data matches 1.. if entity @s[tag=!canBuyTotem] run item replace entity @s enderchest.26 with gray_dye{ui:{id:"undie"},display:{Name:'{"translate":"item.minecraft.totem_of_undying","color": "red","italic": false}',Lore:['""','{"translate":"locked"}']}}