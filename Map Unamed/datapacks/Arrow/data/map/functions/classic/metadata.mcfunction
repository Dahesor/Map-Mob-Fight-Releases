data modify storage run map.PreviewPath set value "map:classic/preview"
data modify storage run map.Structures set value {type:"rotation",Pathes:["map:classic/0","map:classic/1"]}
data modify storage run map.displayName set value '{"translate":"map.classic"}'
data modify storage run map.ore.red set from storage map:data classic.ore.red
data modify storage run map.ore.blue set from storage map:data classic.ore.blue
data modify storage run map.loadCommand set value "/function map:classic/initialize"
data modify storage run map.shopPos set value {red:{Pos:[28d,68d,-12d],facing:"east",Additions:[]},blue:{Pos:[-28d,68d,11d],facing:"west",Additions:[]}}
data modify storage run map.dirt.red set from storage map:data classic.dirt.red
data modify storage run map.dirt.blue set from storage map:data classic.dirt.blue
data modify storage run map.crystalPos set value {red:[[22.5d,65.10d,3.0d],[22.5d,65.10d,8.0d],[20.0d,65.10d,5.5d],[25.0d,65.10d,5.5d]],blue:[[-21.5d,65.10d,-3.0d],[-21.5d,65.10d,-8.0d],[-19.0d,65.10d,-5.5d],[-24.0d,65.10d,-5.5d]],BeamCenter:{red:{X:22,Y:64,Z:5},blue:{X:-22,Y:64,Z:-6}}}

data modify storage run map.spawn.red set value [30.5d,68.8d,-12.5d]
data modify storage run map.spawn.blue set value [-20.5d,68.8d,-12.d]