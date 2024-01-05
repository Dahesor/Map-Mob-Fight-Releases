$scoreboard players set #time calculator $(time)

execute if score #time calculator matches 6 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.title","color": "gold","bold": true}
execute if score #time calculator matches 6 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.1","color": "aqua"}


execute if score #time calculator matches 50 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 50 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.2","color": "aqua"}
execute if score #time calculator matches 50 run summon text_display -10 46 -119 {text:'{"text":"\\uf000","font": "ttu"}',billboard:"fixed",brightness:{block:15,sky:15},transformation:{scale:[6f,6f,6f],right_rotation:[0f,0f,0f,1f],left_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f]},Tags:["tut4"],background:1,}


execute if score #time calculator matches 120 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 120 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.3","color": "aqua"}

execute if score #time calculator matches 170 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 170 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.4","color": "aqua"}
execute if score #time calculator matches 230 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 230 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.5","color": "aqua"}

execute if score #time calculator matches 280 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 280 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.6","color": "aqua"}

execute if score #time calculator matches 360 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 360 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.7","color": "aqua"}

execute if score #time calculator matches 420 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 420 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.8","color": "aqua"}

execute if score #time calculator matches 500 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 500 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.9","color": "aqua"}

execute if score #time calculator matches 280 run data merge entity @e[type=text_display,limit=1,tag=tut4] {text:'{"text":"\\uf001","font": "ttu"}'}
execute if score #time calculator matches 360 run data merge entity @e[type=text_display,limit=1,tag=tut4] {text:'{"text":"\\uf002","font": "ttu"}'}
execute if score #time calculator matches 420 run data merge entity @e[type=text_display,limit=1,tag=tut4] {text:'{"text":"\\uf003","font": "ttu"}'}
execute if score #time calculator matches 500 run data merge entity @e[type=text_display,limit=1,tag=tut4] {text:'{"text":"\\uf004","font": "ttu"}'}

execute if score #time calculator matches 560 run function lobby:tutorial/sound_text_up
execute if score #time calculator matches 560 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.10","color": "aqua"}

execute if score #time calculator matches 600 run function lobby:tutorial/sound_over_up
execute if score #time calculator matches 600 positioned ~-4 ~-2 ~ run tellraw @a[dx=8, dy=6, dz=8] {"translate":"tutorial.shop.warn","color": "red"}


execute if score #time calculator matches 610 run function lobby:tutorial/shop/end