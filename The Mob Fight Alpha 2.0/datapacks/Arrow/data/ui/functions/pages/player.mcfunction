function game:plugin/score_copy
function ui:null
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.2 loot ui:player/sword
loot replace entity @s enderchest.3 loot ui:player/armor
loot replace entity @s enderchest.4 loot ui:player/axe
loot replace entity @s enderchest.5 loot ui:player/crossbow
loot replace entity @s enderchest.6 loot ui:player/pickaxe
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},display:{Name:'{"translate":"返回","color": "red","italic": false}'}}

item replace entity @s enderchest.11 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"magic_occult","with":[" II"],"color": "gray","italic": false}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. if score magic_occult calculator matches 2.. run item replace entity @s enderchest.11 with warped_fungus_on_a_stick{ui:{id:"instant_heal"},CustomModelData:1,display:{Name:'{"translate":"瞬间治疗符","color": "green","italic": false}',Lore:['[{"translate":"瞬间回复4点HP，","color": "gray","italic": false}]','[{"translate":"并在接下来5秒","color": "gray","italic": false}]','{"translate":"再恢复4点HP","color": "gray","italic": false}','""','{"translate":"使用冷却：45s","color": "red","italic": false}','""','{"translate":"price"}','{"translate":"dirt","with":["§a4"]}','{"translate":"lapis","with":["§a10"]}','{"translate":"quartz","with":["§a2"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}

loot replace entity @s enderchest.12 loot ui:player/potions/regen
loot replace entity @s enderchest.13 loot ui:player/potions/strength
loot replace entity @s enderchest.14 loot ui:player/potions/speed
loot replace entity @s enderchest.15 loot ui:player/potions/fire_resistence
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,display:{Name:'{"translate": "...","color":"gray"}'}}

item replace entity @s enderchest.19 with bread{ui:{id:"bread"},display:{Name:'{"translate":"item.minecraft.bread","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a1"]}','{"translate":"点击购买","color": "yellow","italic": false}','{"translate":"Shift+点击购买16个","color": "yellow","italic": false}']}}

execute if score society_populate calculator matches 1 run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a7"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}
execute if score society_populate calculator matches 2 run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a6"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}
execute if score society_populate calculator matches 3.. run item replace entity @s enderchest.20 with cooked_beef{ui:{id:"steak"},display:{Name:'{"translate":"item.minecraft.cooked_beef","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a5"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}
execute unless score society_populate calculator matches 1.. run item replace entity @s enderchest.20 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}

loot replace entity @s enderchest.21 loot ui:player/gold_apple

item replace entity @s enderchest.22 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" II"],"color": "gray","italic": false}','{"translate":"magic_occult","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 2.. if score magic_occult calculator matches 1.. run item replace entity @s enderchest.22 with milk_bucket{ui:{id:"milk"},display:{Name:'{"translate":"item.minecraft.milk_bucket","color": "green","italic": false}',Lore:['""','{"translate":"price"}','{"translate":"iron","with":["§a4"]}','{"translate":"lapis","with":["§a4"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}

item replace entity @s enderchest.23 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. run item replace entity @s enderchest.23 with arrow{ui:{id:"arrow"},display:{Name:'[{"translate":"item.minecraft.arrow","color": "white","italic": false},{"text": " × 16"}]',Lore:['""','{"translate":"price"}','{"translate":"dirt","with":["§a6"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}

item replace entity @s enderchest.24 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" I"],"color": "gray","italic": false}','{"translate":"science_techno","with":[" I"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score society_populate calculator matches 1.. if score science_techno calculator matches 1.. run item replace entity @s enderchest.24 with golden_shovel{ui:{id:"gold_shovel"},HideFlags:2,display:{Name:'{"translate":"item.minecraft.golden_shovel","color": "green","italic": false}',Lore:['""','{"translate":"快速挖掘泥土，可惜太脆","color": "gray","italic": false}','""','{"translate":"price"}','{"translate":"gold","with":["§a5"]}','{"translate":"copper","with":["§a4"]}','{"translate":"点击购买","color": "yellow","italic": false}']}}

item replace entity @s enderchest.26 with gray_dye{ui:{id:"need_tcho"},display:{Name:'{"text":"???","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"society_populate","with":[" III"],"color": "gray","italic": false}','{"translate":"magic_occult","with":[" III"],"color": "gray","italic": false}','{"translate":"science_techno","with":[" III"],"color": "gray","italic": false}','""','{"translate":"locked"}']}}
execute if score magic_occult calculator matches 3.. if score society_populate calculator matches 3.. if score science_techno calculator matches 3.. run item replace entity @s enderchest.26 with totem_of_undying{ui:{id:"undie"},display:{Lore:['""','{"translate":"该物品限购1次","color": "red","italic": false}','""','{"translate":"price"}','{"translate":"gold","with":[" §a64"]}','{"translate":"lapis","with":[" §a64"]}','{"translate":"diamond","with":[" §a32"]}']}}
