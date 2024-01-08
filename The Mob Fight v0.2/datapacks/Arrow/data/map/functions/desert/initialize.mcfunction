fill -26 63 -17 -44 63 -32 blue_carpet replace red_carpet
fill -24 67 -13 -24 63 -35 light_blue_terracotta replace orange_terracotta
fill 44 62 -7 42 62 -9 minecraft:acacia_pressure_plate
fill -44 62 6 -42 62 8 minecraft:acacia_pressure_plate
setblock 43 62 -8 minecraft:campfire
setblock -43 62 7 minecraft:campfire
setblock 33 51 -32 minecraft:acacia_wall_sign[facing= north]
setblock -33 51 31 minecraft:acacia_wall_sign[facing= south]
setblock 33 52 -33 chain[axis= y]
setblock -33 52 32 chain[axis= y]
data modify block 36 44 27 Items[{}].tag merge value {isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}
data modify block 36 44 27 Items[{id:"minecraft:rotten_flesh"}].tag set value {CanDestroy:['#game:breakable'],HideFlags:12}
data modify block 36 44 19 Items[{}].tag merge value {isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}
data modify block 36 44 19 Items[{id:"minecraft:rotten_flesh"}].tag set value {CanDestroy:['#game:breakable'],HideFlags:12}
data modify block -36 44 -28 Items[{}].tag merge value {isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}
data modify block -36 44 -28 Items[{id:"minecraft:rotten_flesh"}].tag set value {CanDestroy:['#game:breakable'],HideFlags:12}
data modify block -36 44 -20 Items[{}].tag merge value {isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}
data modify block -36 44 -20 Items[{id:"minecraft:rotten_flesh"}].tag set value {CanDestroy:['#game:breakable'],HideFlags:12}