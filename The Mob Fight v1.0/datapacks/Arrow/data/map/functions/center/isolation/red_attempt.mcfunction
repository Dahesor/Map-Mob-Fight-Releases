setblock 46 41 -13 air
execute if score center%isolation red matches ..-1 run setblock 46 41 -13 lever[face=wall,powered=false,facing=west]
execute if score center%isolation red matches ..-1 positioned 46 41 -13 run return run function map:center/general/cd

execute positioned 48 42 -13 as @p[team=red,gamemode=!spectator] unless function map:center/isolation/pay run return run setblock 46 41 -13 lever[face=wall,powered=false,facing=west]
execute positioned 48 42 -13 as @p[team=red,gamemode=!spectator] run tellraw @a[team=red] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.isolation.1","color": "light_purple"}]}]
execute as @a[team=red] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


scoreboard players add center%isolation red 1
setblock 48 42 -13 redstone_block
summon iron_golem 19.38 63.46 -5.66 {Team:"red",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem 25.50 63.12 -20.29 {Team:"red",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem 25.50 63.12 -20.29 {Team:"red",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem 18.26 63.12 -30.26 {Team:"red",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem 32.79 63.12 -37.53 {Team:"red",PlayerCreated:1b,Tags:["center%iron_golem"]}