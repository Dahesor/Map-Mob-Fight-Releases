damage @s 2 indirect_magic by @e[type=marker,tag=snowball_child,tag=temp.Damage,limit=1]
damage @s[type=villager] 3 indirect_magic by @e[type=marker,tag=snowball_child,tag=temp.Damage,limit=1]

execute unless entity @s[type=player] run return fail

function game:run/mob_tick/twitching_wizard/get_effect

execute at @s run summon area_effect_cloud ~ ~1 ~ {Duration:6,WaitTime:0,Age:4,Radius:0.5,DurationOnUse:0,RadiusOnUse:0,RadiusPerTick:0,effects:[{id:"conduit_power",amplifier:0b,ambient:1b,duration:1,show_icon:1b,show_particles:0b}],ReapplicationDelay:0,Particle:"block air",Tags:["del","temp.cloud"]}
execute as @e[type=area_effect_cloud,tag=temp.cloud,limit=1,sort=nearest,distance=..4] run function game:run/mob_tick/wizard/could_self