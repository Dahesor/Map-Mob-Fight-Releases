data modify entity @s Item.tag.from_netherite set value 1b
data merge entity @s {Glowing:1b,Motion:[0.0d,0.3d,0.0d]}
data modify entity @s Item.tag.HideFlags set value 42

execute if predicate map:in_red run data modify storage run log.new set value {"text":"","color": "white",extra:[{"translate":"team.red",color:"red"},{text:": ",extra:[{text:""}]}]}
execute if predicate map:in_blue run data modify storage run log.new set value {"text":"","color": "white",extra:[{"translate":"team.blue",color:"aqua"},{text:": ",extra:[{text:""}]}]}

function game:shop/netherite/__get_item_name with entity @s Item.tag.display

data remove storage run log.new.extra[1].extra[0].italic
data remove storage run log.new.extra[1].extra[0].bold

function lobby:spectator/sidebar/log/new