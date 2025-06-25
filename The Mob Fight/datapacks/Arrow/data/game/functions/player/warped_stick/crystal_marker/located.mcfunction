execute if predicate map:in_blue run summon marker ~ ~ ~ {Tags:["crystal_marker","in_blue","ticking"]}
execute if predicate map:in_red run summon marker ~ ~ ~ {Tags:["crystal_marker","in_red","ticking"]}
execute as @a[distance=..15] run playsound arrow:item.crystal_marker master @s ~ ~ ~ 0.6 1 1
kill