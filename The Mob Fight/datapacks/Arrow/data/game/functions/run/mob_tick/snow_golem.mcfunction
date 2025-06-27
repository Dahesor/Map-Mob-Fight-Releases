tag @s remove ticking

execute if predicate map:in_red run team join red @s
execute if predicate map:in_blue run team join blue @s

execute if predicate map:in_red run summon item_display ~ ~ ~ {Tags:["ticking","need_vehicle","del","snow_golem_temp"],Passengers:[{Attributes:[{Name:'generic.max_health',Base:40.0d}],Health:40.0f,Tags:['del'],id:"snow_golem",Team:"red"}]}
execute if predicate map:in_blue run summon item_display ~ ~ ~ {Tags:["ticking","need_vehicle","del","snow_golem_temp"],Passengers:[{Attributes:[{Name:'generic.max_health',Base:40.0d}],Health:40.0f,Tags:['del'],id:"snow_golem",Team:"blue"}]}

ride @e[type=item_display,tag=snow_golem_temp,limit=1,sort=nearest,distance=..3] mount @s
tag @e[type=item_display,tag=snow_golem_temp,sort=nearest,distance=..10] remove snow_golem_temp
data remove entity @s CustomName