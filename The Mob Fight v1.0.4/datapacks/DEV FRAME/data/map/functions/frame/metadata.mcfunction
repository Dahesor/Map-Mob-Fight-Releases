data modify storage run map.id set value -1b
data modify storage run map.Structures set value {type:"specialized",Pathes:["map:red_frame","map:red_frame","map:blue_frame","map:blue_frame"]}
data modify storage run map.pigMan.red set value {StructurePos:[26.0d,73.0d,3.0d],StructurePath:"map:black_stone_cage",itemPos:[30.00d,72.00d,6.00d],pigmanPos:[30.00d,74.40d,6.00d],mirror:"NONE",rotation:"NONE"}
data modify storage run map.pigMan.blue set value {StructurePos:[-26.0d,73.0d,-9.0d],StructurePath:"map:black_stone_cage",itemPos:[-29.00d,72.00d,-6.00d],pigmanPos:[-29.00d,74.40d,-6.00d],mirror:"FRONT_BACK",rotation:"NONE"}
data modify storage run map.displayName set value '{"translate":"DEV"}'
data modify storage run map.ore.red set from storage map:data classic.ore.red
data modify storage run map.ore.blue set from storage map:data classic.ore.blue
data modify storage run map.loadCommand set value ""
data modify storage run map.shopPos set value {red:{Pos:[28d,68d,-12d],facing:"east",Additions:[{Pos:[34d,62d,-25d],facing:"west"},{Pos:[27d,46d,-3d],facing:"west"},{Pos:[22d,74d,22d],facing:"west"}]},blue:{Pos:[-28d,68d,11d],facing:"west",Additions:[{Pos:[-34d,62d,24d],facing:"east"},{Pos:[-27d,46d,2d],facing:"east"},{Pos:[-22d,74d,-23d],facing:"east"}]}}
data modify storage run map.dirt.red set from storage map:data classic.dirt.red
data modify storage run map.dirt.blue set from storage map:data classic.dirt.blue
data modify storage run map.crystalPos set value {red:[[22.5d,65.10d,3.0d],[22.5d,65.10d,8.0d],[20.0d,65.10d,5.5d],[25.0d,65.10d,5.5d]],blue:[[-21.5d,65.10d,-3.0d],[-21.5d,65.10d,-8.0d],[-19.0d,65.10d,-5.5d],[-24.0d,65.10d,-5.5d]],BeamCenter:{red:{X:22,Y:64,Z:5},blue:{X:-22,Y:64,Z:-6}}}
data modify storage run map.spawn.red set value [30.5d,68.8d,-12.5d]
data modify storage run map.spawn.blue set value [-30.5d,68.8d,12.5d]
data modify storage run map.netherite set value {red:[37.5d,63.87d,26.5d],blue:[-36.5d,63.87d,-26.5d]}
data modify storage run map.altar.red set value {checkPoint:[24.00d, 48.00d, -6.50d],facing:"south",extend:1b,drop:1b,blockPos:{1:{Pos:[24d, 47d, -7d],Rotation:"south"},2:{Pos:[23d, 47d, -7d],Rotation:"south"}}}
data modify storage run map.altar.blue set value {checkPoint:[-23.00d, 48.00d, 6.50d],facing:"north",extend:1b,drop:1b,blockPos:{1:{Pos:[-24d, 47d, 6d],Rotation:"north"},2:{Pos:[-23d, 47d, 6d],Rotation:"north"}}}
data modify storage run map.villager set value {red:{Pos:[[15.5d,60.0d,26.5d],[20.50d,45.00d,-15.5d],[31.00d,61.50d,-12.00d]]},blue:{Pos:[[-14.5d,60.0d,-26.5d],[-19.50d,45.00d,15.5d],[-30.00d,61.50d,12.00d]]}}

