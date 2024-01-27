summon marker ~ ~ ~ {data:{lidugs:1b}}
data modify storage run PosRecord append value {Pos:[],type:1b}
data modify storage run PosRecord[-1].Pos set from entity @e[type=marker,limit=1,sort=nearest,nbt={data:{lidugs:1b}}] Pos
setblock ~ ~ ~ glass
kill @e[type=marker,limit=1,sort=nearest,nbt={data:{lidugs:1b}}]
scoreboard players set @s calculator 0