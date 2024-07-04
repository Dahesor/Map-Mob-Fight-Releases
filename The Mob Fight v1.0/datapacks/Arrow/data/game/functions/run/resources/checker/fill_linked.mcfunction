execute as @a[distance=..2] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~0.1 ~
execute unless entity @s[nbt={data:{deepslate:1b}}] run setblock ~ ~ ~ stone
execute if entity @s[nbt={data:{deepslate:1b,axis:"x"}}] run setblock ~ ~ ~ deepslate[axis=x]
execute if entity @s[nbt={data:{deepslate:1b,axis:"y"}}] run setblock ~ ~ ~ deepslate[axis=y]
execute if entity @s[nbt={data:{deepslate:1b,axis:"z"}}] run setblock ~ ~ ~ deepslate[axis=z]
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue append value {type:1b,Pos:[]}
execute if entity @s[nbt={data:{from:"red"}}] run data modify storage run map.ore.red[-1].Pos set from entity @s Pos
execute if entity @s[nbt={data:{from:"blue"}}] run data modify storage run map.ore.blue[-1].Pos set from entity @s Pos
execute if entity @s[nbt={data:{from:"red"}}] run scoreboard players remove oreAdd red 1
execute if entity @s[nbt={data:{from:"blue"}}] run scoreboard players remove oreAdd blue 1
particle block stone ~ ~ ~ 0.5 0.5 0.5 0.1 20
function game:run/resources/add_ore
kill @s