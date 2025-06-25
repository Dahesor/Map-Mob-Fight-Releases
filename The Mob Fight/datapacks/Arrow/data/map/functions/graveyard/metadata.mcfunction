data modify storage run map.PreviewPath set value "map:graveyard/preview"
data modify storage run map.credit set value ["Joel20062006","Nome_Games, Molokmpaso"]
data modify storage run map.id set value 3b
data modify storage run map.Structures set value {type:"specialized",Pathes:["map:graveyard/red_1","map:graveyard/red_2","map:graveyard/blue_1","map:graveyard/blue_2"]}
data modify storage run map.displayName set value '{"translate":"map.graveyard"}'
data modify storage run map.ore.red set from storage map:data graveyard.ore.red
data modify storage run map.ore.blue set from storage map:data graveyard.ore.blue
data modify storage run map.dirt.red set from storage map:data graveyard.dirt.red
data modify storage run map.dirt.blue set from storage map:data graveyard.dirt.blue
data modify storage run map.spawn.red set value [31.45,68.63d,32.07d]
data modify storage run map.spawn.blue set value [-30.45d,68.63d,-32.07d]
data modify storage run map.netherite set value {red:[50.50d,62.50d,-5.50d],blue:[-49.50d,62.50d,6.50d]}
data modify storage run map.loadCommand set value "function map:graveyard/initialize"
data modify storage run map.shopPos set value {red:{Pos:[31d,68d,35d],facing:"north",Additions:[{Pos:[48d,57d,-6d],facing:"west"},{Pos:[18d,43d,-33d],facing:"east"},{Pos:[30d,42d,35d],facing:"north"}]},blue:{Pos:[-31d,68d,-35d],facing:"south",Additions:[{Pos:[-48d,57d,6d],facing:"east"},{Pos:[-18d,43d,33d],facing:"west"},{Pos:[-30d,42d,-35d],facing:"south"}]}}
data modify storage run map.crystalPos set value {red:[[27.5d,65.7d,-7.50d],[33.5d,65.7d,-7.50d],[30.50d,65.7d,-4.50d],[30.50d,65.7d,-10.50d]],blue:[[-26.5d,65.7d,8.50d],[-32.50d,65.7d,8.50d],[-29.5d,65.7d,5.50d],[-29.50d,65.7d,11.50d]],BeamCenter:{red:{X:30,Y:67,Z:-8},blue:{X:-30,Y:67,Z:8}}}
data modify storage run map.pigMan.red set value {StructurePos:[49.0d,66.0d,-7.0d],StructurePath:"map:graveyard/pig",itemPos:[50.50d,65.50d,-5.50d],pigmanPos:[50.50d,68.50d,-5.50d],mirror:"NONE",rotation:"NONE",posX:0,posY:0,posZ:0}
data modify storage run map.pigMan.blue set value {StructurePos:[-51d,66.0d,5.0d],StructurePath:"map:graveyard/pig",itemPos:[-49.50d,65.50d,6.50d],pigmanPos:[-49.50d,68.50d,6.50d],mirror:"NONE",rotation:"NONE",posX:0,posY:0,posZ:0}
data modify storage run map.altar.red set value {checkPoint:[24.5d, 44.50d, -32.5d],facing:"east",extend:0b,drop:1b,blockPos:{1:{Pos:[24.00d, 43.00d, -33.0d],Rotation:"east"}}}
data modify storage run map.altar.blue set value {checkPoint:[-23.50d, 44.50d, 33.5d],facing:"west",extend:0b,drop:1b,blockPos:{1:{Pos:[-24.00d, 43.00d, 33.0d],Rotation:"west"}}}
data modify storage run map.villager set value {red:{Pos:[[29.50d,59.0d,-28.5d],[27.50d,38.00d,12.5d],[27.50d,67.0d,38.5d]]},blue:{Pos:[[-28.50d,59.0d,29.5d],[-26.5d,38.00d,-11.5d],[-26.5d,67.0d,-37.5d]]}}