data modify storage run map.PreviewPath set value "map:desert/preview"
data modify storage run map.id set value 1b
data modify storage run map.Structures set value {type:"rotation",Pathes:["map:desert/1","map:desert/2"]}
data modify storage run map.displayName set value '{"translate":"map.desert"}'
data modify storage run map.ore.red set from storage map:data desert.ore.red
data modify storage run map.ore.blue set from storage map:data desert.ore.blue
data modify storage run map.dirt.red set from storage map:data desert.dirt.red
data modify storage run map.dirt.blue set from storage map:data desert.dirt.blue
data modify storage run map.spawn.red set value [41.50,63.30d,23.50d]
data modify storage run map.spawn.blue set value [-40.0d,63.30d,-23.50d]
data modify storage run map.netherite set value {red:[20.50d, 43.00d,23.50d],blue:[-19.50d,43.00d,-23.50d]}
data modify storage run map.loadCommand set value "/function map:desert/initialize"
data modify storage run map.shopPos set value {red:{Pos:[45d,63d,17d],facing:"west",Additions:[{Pos:[42d,62d,-34d],facing:"south"},{Pos:[31d,41d,-26d],facing:"south"},{Pos:[34d,42d,26d],facing:"north"}]},blue:{Pos:[-45d,63d,-18d],facing:"east",Additions:[{Pos:[-33d,41d,25d],facing:"north"},{Pos:[-34d,42d,-27d],facing:"south"},{Pos:[-42d,62d,33d],facing:"north"}]}}

data modify storage run map.crystalPos set value {red:[[49.50d,73.00d,-14.50d],[49.50d,73.00d,-30.50d],[33.50d,69.00d,-31.50d],[33.50d,69.00d,-13.50d]],blue:[[-48.50d,73.00d,14.50d],[-48.50d,73.00d,30.50d],[-32.50d,69.00d,31.50d],[-32.50d,69.00d,17.50d]],BeamCenter:{red:{X:47,Y:67,Z:-23},blue:{X:-47,Y:67,Z:22}}}

data modify storage run map.pigMan.red set value {StructurePos:[19.0d,42.0d,27.0d],StructurePath:"map:in_wall_1",itemPos:[23.50d,42.50d,25.50d],pigmanPos:[22.50d,42.50d,28.50d],mirror:"NONE",rotation:"NONE",posX:0,posY:-1,posZ:-1}
data modify storage run map.pigMan.blue set value {StructurePos:[-19.0d,42.0d,-28.0d],StructurePath:"map:in_wall_1",itemPos:[-22.50d,42.50d,-25.50d],pigmanPos:[-21.50d,42.50d,-28.50d],mirror:"NONE",rotation:"CLOCKWISE_180",posX:0,posY:-1,posZ:1}
data modify storage run map.altar.red set value {checkPoint:[48.50d, 54.00d, 7.5d],facing:"north",extend:0b,drop:0b,blockPos:{1:{Pos:[48.00d, 54.00d, 7.0d],Rotation:"north"}}}
data modify storage run map.altar.blue set value {checkPoint:[-47.50d, 54.00d, -7.5d],facing:"north",extend:0b,drop:0b,blockPos:{1:{Pos:[-48.00d, 54.00d, -8.0d],Rotation:"north"}}}