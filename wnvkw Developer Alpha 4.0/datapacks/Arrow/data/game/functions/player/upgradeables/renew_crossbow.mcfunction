scoreboard players remove @s crossbow 1
loot give @s loot game:player/crossbow
scoreboard players add @s crossbow 1

execute if data storage run crossbowTemp.id at @s run summon item ~ ~ ~ {Item:{id:"barrier",tag:{isConstant:1b,ruturn_arrowing:1b},Count:1b},PickupDelay:1s}
execute if data storage run crossbowTemp.id at @s run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{ruturn_arrowing:1b}}}] Item set from storage run crossbowTemp