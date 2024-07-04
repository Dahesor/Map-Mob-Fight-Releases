$bossbar add player:$(new) "NULL"
$bossbar set player:$(new) color red
$bossbar set player:$(new) players @s
$execute if score GameMode Data matches 3 run bossbar set player:$(new) style notched_12
$bossbar set player:$(new) visible false
$data modify storage run bossbar_record append value $(new)