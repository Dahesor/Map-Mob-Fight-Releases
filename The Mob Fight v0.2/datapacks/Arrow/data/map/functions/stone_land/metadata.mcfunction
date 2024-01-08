data modify storage run map.PreviewPath set value "map:stoneland/preview"
data modify storage run map.id set value 2b
data modify storage run map.Structures set value {type:"rotation",Pathes:["map:stoneland/1","map:stoneland/2"]}
data modify storage run map.displayName set value '{"translate":"map.stoneland"}'
data modify storage run map.ore.red set from storage map:data stoneland.ore.red
data modify storage run map.ore.blue set from storage map:data stoneland.ore.blue
data modify storage run map.dirt.red set from storage map:data stoneland.dirt.red
data modify storage run map.dirt.blue set from storage map:data stoneland.dirt.blue
data modify storage run map.shopPos set value {red:{Pos:[50d,68d,4d],facing:"north",Additions:[{Pos:[38d,44d,-10d],facing:"east"},{Pos:[29d,54d,32d],facing:"north"},{Pos:[12d,49d,-19d],facing:"south"}]},blue:{Pos:[-50d,68d,-5d],facing:"south",Additions:[{Pos:[-38d,44d,9d],facing:"west"},{Pos:[-29d,54d,-33d],facing:"south"},{Pos:[-12d,49d,18d],facing:"north"}]}}
data modify storage run map.loadCommand set value "/function map:stone_land/initialize"
data modify storage run map.tickCommand set value "/function map:stone_land/tick"
data modify storage run map.crystalPos set value {red:[[26.50d,53.45d,11.50d],[36.50d,53.45d,-12.50d],[26.50d,53.45d,-12.50d],[36.50,53.45d,11.50d]],blue:[[-25.50,53.45,-11.50d],[-35.50d,53.45d,12.50d],[-25.50d,53.45d,12.50d],[-35.50,53.45d,-11.50d]],BeamCenter:{red:{X:31,Y:57,Z:-1},blue:{X:-31,Y:57,Z:0}}}
data modify storage run map.netherite set value {red:[8.50d,45.00d,-0.50d],blue:[-7.50,45.00,0.50d]}
data modify storage run map.spawn.red set value [50.50d,68.00d,0.50d]
data modify storage run map.spawn.blue set value [-49.50d,68.00d,-1.50d]
data modify storage run map.pigMan.red set value {StructurePos:[14.0d,74.0d,-3.0d],StructurePath:"map:black_stone_cage",itemPos:[17.50d,73.20d,-0.50d],pigmanPos:[17.50d,75.00d,-0.50d],mirror:"NONE",rotation:"NONE"}
data modify storage run map.pigMan.blue set value {StructurePos:[-14.0d,74.0d,-3.0d],StructurePath:"map:black_stone_cage",itemPos:[-16.50d,73.20d,0.50d],pigmanPos:[-16.50d,75.00d,0.50d],mirror:"FRONT_BACK",rotation:"NONE"}
data modify storage run map.altar.red set value {checkPoint:[40.50d, 44.00d, -11d],facing:"south",extend:0b,drop:0b,blockPos:{1:{Pos:[40.0d, 44.00d, -11d],Rotation:"south"}}}
data modify storage run map.altar.blue set value {checkPoint:[-39.50d, 44.00d, 10d],facing:"north",extend:0b,drop:0b,blockPos:{1:{Pos:[-40.0d, 44.00d, 10d],Rotation:"north"}}}