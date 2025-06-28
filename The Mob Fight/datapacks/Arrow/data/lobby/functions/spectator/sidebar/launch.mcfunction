execute as @a[tag=spectator] run title @a times 10 50 10
execute as @a[tag=spectator] run title @s title ""
execute as @a[tag=spectator] run title @s subtitle {"translate": "menu.start"}
execute as @a[tag=spectator] run function lobby:spectator/show
execute as @a[tag=spectator] run scoreboard players display numberformat @s belowName fixed {"text":" 📷","color": "gray"}