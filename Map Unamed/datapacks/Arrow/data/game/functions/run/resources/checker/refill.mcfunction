execute as @a[distance=..2] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~0.08 ~ 
execute as @e[type=item,distance=..3.3,predicate=game:item/is_ore] at @s run function game:run/resources/checker/item_self
setblock ~ ~ ~ stone
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red[-1].Pos set from entity @s Pos
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue[-1].Pos set from entity @s Pos
kill @s