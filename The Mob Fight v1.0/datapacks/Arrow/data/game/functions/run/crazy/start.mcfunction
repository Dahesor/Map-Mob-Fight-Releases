scoreboard players set crazyMode Data 1
title @a times 10 60 25
title @a title {"translate":"title.crazy_mode","color": "red"}
title @a subtitle {"translate":"subtitle.crazy_mode","color": "white"}
execute as @a at @s run playsound entity.wither.death master @s ~ ~ ~ 1 0.95 1
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"title.crazy_mode","bold": true}]
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"subtitle.crazy_mode","color": "white"}]
execute if score GameMode Data matches 4 run schedule function game:run/crazy/thunder 6s
execute if score LimitCrazyMode Options matches 1 run scoreboard objectives add crazyMode dummy
execute if score LimitCrazyMode Options matches 1 run give @a tipped_arrow{crazy_mode:1b,CustomModelData:20000,display:{Name:'{"translate":"item.crazy_mode_arrow","italic": false,"color": "light_purple"}',Lore:['""','{"translate":"title.crazy_mode","color": "red","italic": false}','{"translate":"lore.infinate_zombie.1","color": "gold","italic":false}','{"translate":"lore.infinate_zombie.2","color": "gold","italic":false}']},HideFlags:40,custom_potion_effects:[{id:'minecraft:hero_of_the_village',amplifier:100b},{id:'minecraft:unluck',amplifier:1b}],CustomPotionColor:16711680,CanDestroy:["#game:breakable"]} 3