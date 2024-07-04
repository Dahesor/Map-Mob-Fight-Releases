summon marker ~ ~ ~ {Tags:["tp_magic","del",'ticking','snowball_child',"new_temped"],CustomName:'{"translate":"arrow.tp_wizard","color":"gold"}',data:{from:[I;0,0,0,0]}}
data modify entity @e[type=marker,limit=1,tag=new_temped,tag=tp_magic] data.from set from entity @s Owner
tag @e[type=marker,limit=1,tag=new_temped,tag=tp_magic] remove new_temped