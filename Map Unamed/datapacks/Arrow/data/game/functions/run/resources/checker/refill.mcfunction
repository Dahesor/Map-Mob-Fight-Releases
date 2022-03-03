setblock ~ ~ ~ stone
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red[-1].Pos set from entity @s Pos
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue[-1].Pos set from entity @s Pos
kill @s