function game:plugin/score_copy
item replace entity @s enderchest.0 with red_stained_glass_pane{UISpaceHolder:1b,display:{Name:'{"translate": "...","color":"gray"}'}}
item replace entity @s enderchest.1 with yellow_banner{BlockEntityTag:{Patterns:[{Color:0,Pattern:"tt"}]},ui:{id:"flag"},display:{Name:'{"translate":"号令之旗","color": "gold","italic": false}',Lore:['""','{"translate":"使全部我方怪物停止自相攻击","color": "gray","italic": false}','{"translate":"且全属性少量增幅","color": "gray","italic": false}','{"translate":"持续35秒","color": "gray","italic": false}','""','{"translate":"price"}','{"translate":"dirt","with":["§a40"]}','{"translate":"quartz","with":["§a6"]}','{"translate":"点击购买","color": "yellow","italic": false}']},HideFlags:32}
item replace entity @s enderchest.2 with splash_potion{CustomPotionColor:3545685,ui:{id:"need_tcho"},display:{Name:'{"translate":"失明轰炸","color": "red","italic": false}',Lore:['""','{"translate":"need_tcho"}','{"translate":"magic","with":[" II"],"color": "gray","italic": false}','{"translate":"alchemy","with":[" II"],"color": "gray","italic": false}','{"translate":"locked"}']}}
execute if score magicLabLevel calculator matches 2.. if score alchemyLevel calculator matches 2.. run item modify entity @s enderchest.2 ui:buff/blindness_attack
loot replace entity @s enderchest.3 loot ui:background
loot replace entity @s enderchest.4 loot ui:background
loot replace entity @s enderchest.5 loot ui:background
loot replace entity @s enderchest.6 loot ui:background
loot replace entity @s enderchest.7 loot ui:background
loot replace entity @s enderchest.8 loot ui:background
item replace entity @s enderchest.9 with barrier{ui:{id:"back",sound:"click"},display:{Name:'{"translate":"返回","color": "red","italic": false}'}}
loot replace entity @s enderchest.10 loot ui:background
loot replace entity @s enderchest.11 loot ui:buff/new_crystal
loot replace entity @s enderchest.12 loot ui:background
loot replace entity @s enderchest.13 loot ui:buff/upgrade_beam
loot replace entity @s enderchest.14 loot ui:background
loot replace entity @s enderchest.15 loot ui:background
loot replace entity @s enderchest.16 loot ui:background
loot replace entity @s enderchest.17 loot ui:background
item replace entity @s enderchest.18 with red_stained_glass_pane{UISpaceHolder:1b,display:{Name:'{"translate": "...","color":"gray"}'}}
loot replace entity @s enderchest.19 loot ui:buff/sharpness
loot replace entity @s enderchest.20 loot ui:buff/sweep
loot replace entity @s enderchest.21 loot ui:buff/efficiency
loot replace entity @s enderchest.22 loot ui:buff/proj_protection
loot replace entity @s enderchest.23 loot ui:buff/blast_protection
loot replace entity @s enderchest.24 loot ui:buff/power
loot replace entity @s enderchest.25 loot ui:background
loot replace entity @s enderchest.26 loot ui:background