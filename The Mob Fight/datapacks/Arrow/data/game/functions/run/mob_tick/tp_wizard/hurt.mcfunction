damage @s 2.75 indirect_magic by @e[type=marker,tag=snowball_child,tag=temp.Damage,limit=1]
data modify storage run tp_magic set value {UUID:[I;0,0,0,0]}
data modify storage run tp_magic.UUID set from entity @e[type=marker,tag=snowball_child,tag=temp.Damage,limit=1] data.from
function game:run/mob_tick/tp_wizard/find_source with storage run tp_magic
execute at @s run summon marker ~ ~ ~ {Tags:["tp_magic_temp"]}
execute positioned as @e[type=drowned,tag=tp_wizard,limit=1,tag=tp_magic_temp,sort=nearest] run tp @s ~ ~ ~
tp @e[type=drowned,tag=tp_wizard,limit=1,tag=tp_magic_temp,sort=nearest] @e[type=marker,limit=1,tag=tp_magic_temp,sort=nearest]
kill @e[type=marker,tag=tp_magic_temp]
tag @e[type=drowned,tag=tp_wizard,tag=tp_magic_temp] remove tp_magic_temp