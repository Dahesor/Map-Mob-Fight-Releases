data modify storage run map.PreviewPath set value "map:center/preview"
data modify storage run map.credit set value ["Dahesor",""]
data modify storage run map.id set value 4b
data modify storage run map.Structures set value {type:"rotation",Pathes:["map:center/0","map:center/1"]}
data modify storage run map.pigMan.red set value {StructurePos:[16.0d,68.0d,-22.0d],StructurePath:"map:graveyard/pig",itemPos:[17.50d,67.10d,-20.50d],pigmanPos:[17.50d,69.50d,-20.50d],mirror:"NONE",rotation:"NONE",posX:0,posY:0,posZ:0}
data modify storage run map.pigMan.blue set value {StructurePos:[-18d,68.0d,19.0d],StructurePath:"map:graveyard/pig",itemPos:[-16.50d,67.10d,20.50d],pigmanPos:[-16.50d,69.50d,20.50d],mirror:"NONE",rotation:"NONE",posX:0,posY:0,posZ:0}
data modify storage run map.displayName set value '{"translate":"map.center"}'
data modify storage run map.ore.red set from storage map:data center.ore.red
data modify storage run map.ore.blue set from storage map:data center.ore.blue
data modify storage run map.loadCommand set value "function map:center/initialize"
data modify storage run map.tickCommand set value "function map:center/ticker"
data modify storage run map.resetCommand set value "function map:center/reset"
data modify storage run map.shopPos set value {red:{Pos:[37d,41d,-21d],facing:"east",Additions:[{Pos:[15d,41d,-21d],facing:"east"},{Pos:[9d,54d,16d],facing:"south"},{Pos:[19d,37d,7d],facing:"south"}]},blue:{Pos:[-37d,41d,20d],facing:"west",Additions:[{Pos:[-15d,41d,20d],facing:"west"},{Pos:[-9d,54d,-17d],facing:"north"},{Pos:[-19d,37d,-8d],facing:"north"}]}}
data modify storage run map.dirt.red set from storage map:data center.dirt.red
data modify storage run map.dirt.blue set from storage map:data center.dirt.blue
data modify storage run map.crystalPos set value {red:[[21.5d,68.0d,-5.5d],[44.0d,74.00d,22.0d],[19.50d,67.20d,-31.5d],[6.5d,49.10d,21.0d]],blue:[[-20.5d,68.0d,5.5d],[-43.0d,74.00d,-22.0d],[-18.50d,67.20d,31.5d],[-5.5d,49.10d,-21.0d]],BeamCenter:{red:{X:30,Y:92,Z:1},blue:{X:-30,Y:92,Z:-2}}}
data modify storage run map.spawn.red set value [41.5d,41.3d,-26.5d]
data modify storage run map.spawn.blue set value [-40.5d,41.3d,26.5d]
data modify storage run map.netherite set value {red:[25.5d,41.6d,-29.5d],blue:[-24.5d,41.6d,29.5d]}
data modify storage run map.altar.red set value {checkPoint:[7.50d, 53.00d, 22.0d],facing:"east",extend:1b,drop:0b,blockPos:{1:{Pos:[7d, 52d, 22d],Rotation:"east"},2:{Pos:[7d, 52d, 21d],Rotation:"east"}}}
data modify storage run map.altar.blue set value {checkPoint:[-6.50d, 53.00d, -22.0d],facing:"west",extend:1b,drop:0b,blockPos:{1:{Pos:[-7d, 52d, -23d],Rotation:"west"},2:{Pos:[-7d, 52d, -22d],Rotation:"west"}}}
data modify storage run map.villager set value {red:{Pos:[[25.5d,41.0d,-11.5d],[20.0d,36.00d,20.0d],[42.5d,73.00d,-26.50d]]},blue:{Pos:[[-24.5d,41.0d,11.5d],[-19.0d,36.00d,-20.0d],[-41.5d,73.00d,26.50d]]}}