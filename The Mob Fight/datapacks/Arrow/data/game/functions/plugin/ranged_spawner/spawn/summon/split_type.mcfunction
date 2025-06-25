execute if data storage run summonData{name:"VOID"} at @e[type=villager,limit=1,sort=nearest,distance=..5] as @e[type=tnt,tag=normal,nbt={OnGround:1b}] at @s run function game:run/netherite/villager/tnt/bounce
data modify storage run summonData set from entity @s data.spawn.entity[0]
data remove entity @s data.spawn.entity[0]
execute if data storage run summonData{name:"zombie"} run summon zombie ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"evoker_fangs"} run summon evoker_fangs ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"skeleton"} run summon skeleton ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"spider"} run summon spider ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"creeper"} run summon creeper ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"witch"} run summon witch ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"slime"} run summon slime ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"stray"} run summon stray ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"husk"} run summon husk ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"cave_spider"} run summon cave_spider ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"silverfish"} run summon silverfish ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"bat"} run summon bat ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"blaze"} run summon blaze ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"endermite"} run summon endermite ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"wither_skeleton"} run summon wither_skeleton ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"vindicator"} run summon vindicator ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"zoglin"} run summon zoglin ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"vex"} run summon vex ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"drowned"} run summon drowned ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"evoker"} run summon evoker ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"ghast"} run summon ghast ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"guardian"} run summon guardian ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"illusioner"} run summon illusioner ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"magma_cube"} run summon magma_cube ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"ravager"} run summon ravager ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"pillager"} run summon pillager ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"tnt"} run summon tnt ~ ~ ~ {Tags:["summonTempUnDataed"]}
execute if data storage run summonData{name:"VOID"} run return fail
function #custom:marker_spawner_types

data modify entity @e[tag=summonTempUnDataed,limit=1] {} merge from storage run summonData.data