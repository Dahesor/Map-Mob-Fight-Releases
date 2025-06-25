summon item ~ ~ ~ {Item:{id:"barrier",Count:1b},Tags:["shop_item","not_filled"]}
data modify storage run result.Sell.HideFlags set value 40
data modify storage run result.Sell.CanDestroy set value ["#game:breakable"]
data modify storage run UUID set from entity @s UUID
execute as @e[type=item,limit=1,sort=nearest,tag=shop_item,tag=not_filled] run function game:shop/sell/item_self
playsound entity.experience_orb.pickup player @s ~ ~ ~ 0.8 1.6
tellraw @s ["",{"translate":"[商店] ","color": "aqua"},{"translate":"您购买了"},{"text": "[","color": "aqua"},{"nbt":"result.Sell.display.Name","storage": "run","interpret": true},{"text": "]","color": "aqua"}]
execute if score dataCollection Data matches 1.. run function game:shop/sell/record_data