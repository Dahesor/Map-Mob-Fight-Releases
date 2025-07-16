playsound entity.lightning_bolt.thunder master @a ~ ~ ~
execute positioned ~ ~25 ~ run summon minecraft:lightning_bolt

tag @s add UpRocketFinish
execute as @e[type=#game:mobs,distance=..6] run function game:player/warped_stick/up_rocket/enemy_self
tag @s remove UpRocketFinish

tp @s ~ ~1 ~
effect give @s slow_falling 3 1 true
particle instant_effect ~ ~1 ~ 0.05 0.5 0.05 2 100 force

data modify storage run log.log append value {content:{translate:"event.used_item",color:"green",with:[{translate:"item.tp",color:"gold"}]}}
function lobby:spectator/sidebar/log/signed