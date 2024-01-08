scoreboard players set flare blue 300
execute as @a[team=blue] run function game:run/gamemodes/thunder/visible/light_shift
execute as @a[team=blue] run function game:run/gamemodes/thunder/events/check_cell

kill @e[type=marker,tag=THUNDER.flare,nbt={data:{team:"blue"}}]
summon marker 32 85 0 {Tags:["THUNDER.flare"],data:{team:"blue"}}
summon firework_rocket 32 85 0 {Invulnerable:1b,Life:0,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;3604735,3604735,3604735],Type:4b}]}}},Silent:1b}
