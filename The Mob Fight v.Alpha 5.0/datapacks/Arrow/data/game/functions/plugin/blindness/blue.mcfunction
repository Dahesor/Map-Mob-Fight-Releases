title @a[team=blue] times 5 35 10
title @a[team=blue] title ""
title @a[team=blue] subtitle {"translate":"空袭！空袭！","color": "red"}
summon marker -10 100 -50 {Tags:["blindness"]}
summon marker -15 100 -50 {Tags:["blindness"]}
summon marker -20 100 -50 {Tags:["blindness"]}
summon marker -25 100 -50 {Tags:["blindness"]}
summon marker -30 100 -50 {Tags:["blindness"]}
summon marker -35 100 -50 {Tags:["blindness"]}
summon marker -40 100 -50 {Tags:["blindness"]}
summon marker -45 100 -50 {Tags:["blindness"]}
summon marker -50 100 -50 {Tags:["blindness"]}
schedule function game:plugin/blindness/loop 1t replace
execute as @a[team=blue] at @s run playsound arrow:event.animate_netherite master @s ~ ~ ~ 3.0 0.8