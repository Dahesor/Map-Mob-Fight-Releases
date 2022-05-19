bossbar set top:single players @a
playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s ["",{"text":"b","obfuscated": true,"color": "yellow"}," ",{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"chat.welcome.new_player","color": "light_purple","with":[{"translate":"map.name","color": "dark_purple"}]}]
function lobby:team_join_random