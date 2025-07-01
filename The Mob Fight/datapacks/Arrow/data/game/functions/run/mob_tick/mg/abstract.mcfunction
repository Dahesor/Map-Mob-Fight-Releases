execute on vehicle run return fail
execute positioned ~ ~-0.8 ~ run tag @a[gamemode=adventure,distance=..2] add abstractTarget
execute on origin run damage @a[tag=abstractTarget,limit=1] 0.01 mob_attack by @s
tag @a remove abstractTarget
kill