scoreboard players set @s carrot_stick -2
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 unless block ~ ~ ~ coarse_dirt run say §6Nope!
execute positioned ~ ~-1 ~ align xyz positioned ~0.5 ~ ~0.5 if block ~ ~ ~ coarse_dirt run function developer:dirt_record