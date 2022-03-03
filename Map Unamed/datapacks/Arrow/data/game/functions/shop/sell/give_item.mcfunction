summon item ~ ~ ~ {Item:{id:"barrier",Count:1b},Tags:["shop_item"]}
data modify storage run result.Sell.HideFlags set value 32
execute as @e[type=item,limit=1,sort=nearest,tag=shop_item] run function game:shop/sell/item_self
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.6
tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"您购买了"},{"text": "[","color": "aqua"},{"nbt":"result.Sell.display.Name","storage": "run","interpret": true},{"text": "]","color": "aqua"}]