data merge storage run {macro_death:{damage:0.0f,type:""}}

function game:run/crystal/chain/record_type

execute store result score #death_note calculator run attribute @s generic.max_health get 5
scoreboard players remove #death_note calculator 5


scoreboard players set particleDistance particleCreator 20
scoreboard players set particleType particleCreator 6
function particle_creat:enter

scoreboard players set particleDistance particleCreator 35
scoreboard players set particleType particleCreator 7
function particle_creat:enter

scoreboard players set particleDistance particleCreator 55
scoreboard players set particleType particleCreator 8
function particle_creat:enter



execute as @e[type=#game:mobs,distance=..5.5] run function game:run/crystal/chain/damage_self
execute as @e[type=#game:mobs,distance=..3.5] run damage @s 3 generic_kill
execute as @e[type=#game:mobs,distance=..2] run damage @s 5 generic_kill