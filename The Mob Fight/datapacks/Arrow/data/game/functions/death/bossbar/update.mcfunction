# $(this)

$execute store result bossbar player:$(this) value run scoreboard players get @s revive_cooldown
scoreboard players operation #temp bossbar = @s revive_cooldown
scoreboard players operation #temp bossbar /= #20 calculator
scoreboard players add #temp bossbar 1
$bossbar set player:$(this) name {"translate":"revive.cd","color": "red","with":[{"score":{"name":"#temp","objective":"bossbar"},"color": "yellow"}]}
$bossbar set player:$(this) visible false
$bossbar set player:$(this) visible true