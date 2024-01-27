loot spawn 0 0 0 loot game:head_self
data modify storage run playerName set from entity @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head",tag:{head_self:1b}}}] Item.tag.SkullOwner.Name
kill @e[type=item,limit=1,sort=nearest,nbt={Item:{id:"minecraft:player_head",tag:{head_self:1b}}}]