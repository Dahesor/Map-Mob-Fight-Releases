data modify entity @s Item set value {id:"tipped_arrow",Count:1b,tag:{}}
data modify entity @s Item.tag merge from storage run result.Sell
data modify entity @s Owner set from storage run UUID