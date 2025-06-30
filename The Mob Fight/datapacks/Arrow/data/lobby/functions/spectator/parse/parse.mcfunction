execute if entity @s run loot spawn 0 0 0 loot lobby:parser
execute unless entity @s as @a[limit=1] run loot spawn 0 0 0 loot lobby:parser
execute positioned 0 0 0 as @e[type=item,sort=nearest,distance=..4,nbt={Item:{tag:{parse:1b}}}] run function lobby:spectator/parse/item_self