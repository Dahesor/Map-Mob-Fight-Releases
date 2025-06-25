bossbar set top:single color white
bossbar set top:single players @a
bossbar set top:single style notched_6
bossbar set top:single visible false
bossbar set top:single visible true

scoreboard players set #z calculator 3600
scoreboard players operation #z calculator -= GameLength Data
scoreboard players operation #x calculator = #z calculator
scoreboard players operation #y calculator = #z calculator
scoreboard players operation #x calculator /= #1200 calculator
scoreboard players operation #y calculator %= #1200 calculator
scoreboard players operation #y calculator /= #20 calculator

bossbar set top:single max 3600
execute store result bossbar top:single value run scoreboard players get #z calculator
bossbar set top:single name {"translate":"topbar.prepare","with":[{"score":{"name":"#x","objective":"calculator"},"color": "green"},{"score":{"name":"#y","objective":"calculator"},"color": "green"}],"color": "yellow"}


bossbar set top:single visible false
bossbar set top:single visible true