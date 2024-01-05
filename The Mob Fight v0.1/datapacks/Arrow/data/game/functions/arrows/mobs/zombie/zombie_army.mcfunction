summon armor_stand ~ ~-1 ~ {ArmorItems:[{},{},{},{id:"black_banner",Count:1b,tag:{BlockEntityTag:{Patterns:[{Color:13,Pattern:"sku"}]}}}],Tags:["second_ticking","zombie_army_center"],Marker:1b,Invisible:1b}


summon marker ~ ~ ~ {Tags:["spawnCenterR","inactivedSpawnCenterR","updating"],data:{spawn:{mode:"NORMAL",name:"zombie_army",time:17b,range:4b,maxTickCount:1b,entity:[{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}},{name:"zombie",data:{}}]}}}

execute if predicate map:in_red run tellraw @a [{"text": "[!]","color": "red"},{"translate":"event.arrow.bell.red","color": "yellow"}]
execute if predicate map:in_blue run tellraw @a [{"text": "[!]","color": "red"},{"translate":"event.arrow.bell.blue","color": "yellow"}]
kill