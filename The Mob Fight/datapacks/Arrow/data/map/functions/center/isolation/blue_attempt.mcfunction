setblock -46 41 12 air
execute if score center%isolation blue matches ..-1 run setblock -46 41 12 lever[face=wall,powered=false,facing=west]
execute if score center%isolation blue matches ..-1 positioned -46 41 12 run return run function map:center/general/cd

execute positioned -48 42 12 as @p[team=blue,gamemode=!spectator] unless function map:center/isolation/pay run return run setblock -46 41 12 lever[face=wall,powered=false,facing=east]
execute positioned -48 42 12 as @p[team=blue,gamemode=!spectator] run tellraw @a[team=blue] [{"translate":"chat.head.game","color": "green"}," ",{"translate":"map.center.cast","color": "aqua","with":[{"selector":"@s","color": "white"},{"translate":"map.center.isolation.1","color": "light_purple"}]}]
execute as @a[team=blue] at @s run playsound entity.experience_orb.pickup master @s ~ ~ ~ 1 1 1


scoreboard players add center%isolation blue 1
setblock -48 42 12 redstone_block
summon iron_golem -18.38 63.46 5.66 {Team:"blue",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem -24.50 63.12 20.29 {Team:"blue",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem -24.50 63.12 20.29 {Team:"blue",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem -17.26 63.12 30.26 {Team:"blue",PlayerCreated:1b,Tags:["center%iron_golem"]}
summon iron_golem -31.79 63.12 37.53 {Team:"blue",PlayerCreated:1b,Tags:["center%iron_golem"]}