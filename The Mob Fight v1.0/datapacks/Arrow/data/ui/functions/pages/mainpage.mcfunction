function ui:null
item replace entity @s enderchest.10 with tipped_arrow{CustomModelData:1,HideFlags:32,ui:{id:1b,sound:"click"},display:{Name:'{"translate":"怪物生成箭","color": "green","italic": false}',Lore:['""','{"translate":"在这里购买怪物","color": "gray","italic": false}','{"translate":"并把它们射给敌人","color": "gray","italic": false}','{"translate":"点击浏览","color": "yellow","italic": false}']}}
loot replace entity @s enderchest.12 loot ui:mainpage/player_equipment
item replace entity @s enderchest.14 with brewing_stand{ui:{id:2b,sound:"click"},HideFlags:127,display:{Name:'{"translate":"科技研究","color": "green","italic": false}',Lore:['""','{"translate":"研究科技以解锁更高级的","color": "gray","italic": false}','{"translate":"商店物品与属性增益","color": "gray","italic": false}','{"translate":"点击浏览","color": "yellow","italic": false}']},CustomModelData:1}
item replace entity @s enderchest.16 with flint_and_steel{ui:{id:6b,sound:"click"},HideFlags:127,Unbreakable:1b,display:{Name:'{"translate":"团队增益","color": "green","italic": false}',Lore:['""','{"translate":"为队伍购买增益","color": "gray","italic": false}','{"translate":"或给对手带来不幸！","color": "gray","italic": false}','{"translate":"点击浏览","color": "yellow","italic": false}']},CustomModelData:1}
execute unless score disableOreConvert Options matches 1 run item replace entity @s enderchest.22 with barrier{ui:{id:7b,sound:"click"},HideFlags:127,Unbreakable:1b,display:{Name:'{"translate":"Convert","color": "green","italic": false}',Lore:['""','{"translate":"为队伍购买增益","color": "gray","italic": false}','{"translate":"或给对手带来不幸！","color": "gray","italic": false}','{"translate":"点击浏览","color": "yellow","italic": false}']},CustomModelData:2}

loot replace entity @s enderchest.7 loot ui:background_long
item replace entity @s enderchest.8 with gray_stained_glass_pane{CustomModelData:6,ui:{id:-1b,sound:"click"},HideFlags:127,Unbreakable:1b,display:{Name:'{"translate":"settings","color": "green","italic": false}',Lore:['""','{"translate":"lore.surrender","color": "gray","italic": false}','{"translate":"lore.more_coming","color": "gray","italic": false}','""','{"translate":"点击浏览","color": "yellow","italic": false}']}}
execute if score game Data matches 0 run item replace entity @s enderchest.4 with oak_sign{UISpaceHolder:1b,display:{Name:'{"translate":"info.shop_preview","color": "yellow","italic": false}',Lore:['""','{"translate":"info.shop_preview.lore","color": "aqua","italic": false}']}}