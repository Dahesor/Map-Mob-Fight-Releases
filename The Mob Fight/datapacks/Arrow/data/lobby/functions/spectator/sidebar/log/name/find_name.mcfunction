loot spawn 0 0 0 loot lobby:name_head
execute positioned 0 0 0 as @e[type=item,distance=..5,nbt={Item:{tag:{isNameFind:1b}}}] run function lobby:spectator/sidebar/log/name/item_self