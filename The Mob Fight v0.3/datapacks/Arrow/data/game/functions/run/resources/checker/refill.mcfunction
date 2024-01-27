execute as @a[distance=..2] at @s if block ~ ~-0.5 ~ air run tp @s ~ ~0.1 ~ 
execute as @e[type=item,distance=..3.3,predicate=game:item/is_ore] at @s run function game:run/resources/checker/item_self
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
function game:run/resources/add_ore
tag @s[tag=!markerOreLinkingTarget] add markerOreLinkingSelf
#define tag markerOreLinkingTarget
execute if score destroyMode Data matches 1.. if entity @s[nbt={data:{from:"red"}},tag=markerOreLinkingSelf] as @e[type=marker,tag=!markerOreLinkingSelf,nbt={data:{from:"red"}},sort=nearest,limit=4,distance=..3.3] run tag @s add markerOreLinkingTarget
execute if score destroyMode Data matches 1.. if entity @s[nbt={data:{from:"blue"}},tag=markerOreLinkingSelf] as @e[type=marker,tag=!markerOreLinkingSelf,nbt={data:{from:"blue"}},sort=nearest,limit=4,distance=..3.3] run tag @s add markerOreLinkingTarget
tag @s remove markerOreLinkingTarget
function game:run/resources/link/find
kill @s