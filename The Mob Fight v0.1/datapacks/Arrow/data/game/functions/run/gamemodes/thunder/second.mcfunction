scoreboard players add #thunder_loop calculator 1
execute if score #thunder_loop calculator matches 2 run scoreboard players set #thunder_loop calculator 0
execute if score #thunder_loop calculator matches 1 if score flare red matches 20.. as @a[team=red] at @s run function game:run/gamemodes/thunder/events/check_cell
execute if score #thunder_loop calculator matches 1 if score flare blue matches 20.. as @a[team=blue] at @s run function game:run/gamemodes/thunder/events/check_cell


execute as @e[type=marker,tag=THUNDER.flare,nbt={data:{team:"red"}}] run summon firework_rocket -32 85 0 {Invulnerable:1b,Life:0,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;16711680,16711680,16726629],Type:4b}]}}},Silent:1b}
execute as @e[type=marker,tag=THUNDER.flare,nbt={data:{team:"blue"}}] run summon firework_rocket 32 85 0 {Invulnerable:1b,Life:0,LifeTime:1,ShotAtAngle:0b,FireworksItem:{id:"minecraft:firework_rocket",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;3604735,3604735,3604735],Type:4b}]}}},Silent:1b}

