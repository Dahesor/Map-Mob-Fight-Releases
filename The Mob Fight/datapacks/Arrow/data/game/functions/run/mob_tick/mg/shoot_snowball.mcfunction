scoreboard players add @s genericCD 3
data modify storage run UUID set from entity @s UUID
execute positioned ^ ^ ^1 summon snowball run function game:run/mob_tick/mg/as_snowball
execute if score @s genericCD matches 100.. run scoreboard players set @s genericCD -40