summon item ~ ~ ~ {Tags:["ui_returned"],Item:{id:"barrier",Count:1b}}
data modify entity @e[limit=1,type=item,sort=nearest,tag=ui_returned,nbt={Item:{id:"minecraft:barrier"}}] Item set from storage run temp[0]
data remove storage run temp[0]