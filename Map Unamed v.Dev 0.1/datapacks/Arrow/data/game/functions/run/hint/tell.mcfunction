scoreboard players set hint calculator -50
tellraw @a [{"translate":"提示","color": "yellow"},{"text":">","color": "green"},{"nbt":"hint[0].Content","storage": "game:hint","color": "aqua","interpret": true}]
data modify storage game:hint hint append from storage game:hint hint[0]
data remove storage game:hint hint[0]