bossbar set top:single players @a
playsound entity.experience_orb.pickup master @s ~ ~ ~
tellraw @s ["",{"text":"b","obfuscated": true,"color": "yellow"}," ",{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"chat.welcome.new_player","color": "light_purple","with":[{"translate":"map.name","color": "dark_purple"}]}]
schedule function lobby:settings/reload_credit 1s append

tellraw @s ["",{"translate":"chat.head.game","color": "red"}," ",{"translate":"map.version_hint","color": "red","with":[{"translate":"map.prefix","color": "aqua","with":[{"nbt":"text","color": "aqua","storage": "version"}]}]}]
tellraw @s [{"text":"    - ","color": "red"}," ",{"translate":"map.resource_pack_version","with":[{"translate":"map.name","color": "aqua"}]}]
tellraw @s [{"text":"    -  ","color": "red"},{"translate":"map.version_hint.renew","color": "light_purple","underlined": true}]
execute unless score game Data matches 1 run function lobby:team_join_random
function ui:actions/mainpage/anchor
