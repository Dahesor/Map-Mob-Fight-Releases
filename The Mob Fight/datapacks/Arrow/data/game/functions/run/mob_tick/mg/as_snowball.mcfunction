summon item ~ ~ ~ {Item:{id:"snowball",Count:1b},Tags:["new_temp","ticking","abstractSowball","del"],PickupDelay:32767s}
ride @e[type=item,tag=new_temp,limit=1,distance=..2] mount @s
execute on passengers run data modify entity @s Thrower set from storage run UUID
execute on passengers run tag @s remove new_temp
function game:run/mob_tick/mg/as_projectile