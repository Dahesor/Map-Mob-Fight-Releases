title @a[team=red] times 5 35 10
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"空袭！空袭！","color": "red"}
summon marker 10 100 -50 {Tags:["blindness","red"]}
summon marker 15 100 -50 {Tags:["blindness","red"]}
summon marker 20 100 -50 {Tags:["blindness","red"]}
summon marker 25 100 -50 {Tags:["blindness","red"]}
summon marker 30 100 -50 {Tags:["blindness","red"]}
summon marker 35 100 -50 {Tags:["blindness","red"]}
summon marker 40 100 -50 {Tags:["blindness","red"]}
summon marker 45 100 -50 {Tags:["blindness","red"]}
summon marker 50 100 -50 {Tags:["blindness","red"]}
schedule function game:plugin/blindness/loop 1t replace
execute as @a[team=red] at @s run playsound arrow:event.animate_netherite master @s ~ ~ ~ 3.0 0.8