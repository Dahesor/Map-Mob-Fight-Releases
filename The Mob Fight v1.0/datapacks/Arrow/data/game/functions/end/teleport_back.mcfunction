execute as @a at @s run tp @s 0.50 58.5 110.5 -180.00 0.0
function lobby:lobby_spinner/redstone
tag @a remove returning
execute as @a[team=red] run function lobby:team_join_red
execute as @a[team=blue] run function lobby:team_join_blue
execute as @a[tag=team_randomed] run function lobby:team_join_random
execute as @a[tag=spectator] run function lobby:spectate
tellraw @a ["",{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"Game Over!","color": "aqua"},"\n","§a=========================================\n",{"translate":"head.winner","color": "green"},{"selector":"@a[tag=last_winner]"},"\n","§a=========================================\n",{"translate":"head.loser","color": "red"},{"selector":"@a[tag=!last_winner,tag=!spectator]"},"\n§a========================================="]
execute at @r run summon firework_rocket ~ ~2.4 ~ {Invulnerable:1b,Life:0,LifeTime:20,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Flicker:1b,Colors:[I;65408,14641369,16726629],Type:4b}]}}}}
execute at @r run summon firework_rocket ~3 ~2.4 ~ {Invulnerable:1b,Life:0,LifeTime:30,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;16712749,14641369,10198],Type:2b}]}}}}
execute at @r run summon firework_rocket ~5 ~5.4 ~4 {Invulnerable:1b,Life:0,LifeTime:25,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Flicker:1b,Colors:[I;65408,14641369,16759753],Type:4b}]}}}}
execute at @r run summon firework_rocket ~ ~2.4 ~2 {Invulnerable:1b,Life:0,LifeTime:34,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;11753437,14641369,16619437],Type:3b}]}}}}
execute at @r run summon firework_rocket ~ ~2.4 ~-5 {Invulnerable:1b,Life:0,LifeTime:38,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;12910484,11382189,65535],Type:4b}]}}}}
execute at @r run summon firework_rocket ~4 ~2.4 ~ {Invulnerable:1b,Life:0,LifeTime:40,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;65408,14641369,16726629],Type:1b}]}}}}
execute at @r run summon firework_rocket ~ ~2.4 ~-2 {Invulnerable:1b,Life:0,LifeTime:45,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Flicker:1b,Colors:[I;65408,14641369,16726629],Type:3b}]}}}}
execute at @r run summon firework_rocket ~-2 ~2.4 ~-4 {Invulnerable:1b,Life:0,LifeTime:15,ShotAtAngle:0b,FireworksItem:{id:"minecraft:arrow",Count:1b,tag:{Fireworks:{Explosions:[{Trail:1b,Colors:[I;12617386,15662848,16743168],FadeColors:[I;65408,14641369,16726629],Type:2b}]}}}}
bossbar set map:load color yellow
bossbar set map:load value 0
bossbar set map:load players @a
bossbar set map:load visible false
bossbar set map:load visible true
bossbar set map:load name {"translate":"bar.reset_map","color": "red"}
data modify storage run map.Structures set value {type:"specialized",Pathes:["map:red_frame","map:red_frame","map:blue_frame","map:blue_frame"]}
schedule function lobby:map_selection/map_generation/map_check 1t
schedule function game:end/reset_map 30t
scoreboard players set @a join_game 0
scoreboard players set @a lastGame -1
gamemode adventure @a
clear @a
execute as @a run function ui:actions/mainpage/anchor