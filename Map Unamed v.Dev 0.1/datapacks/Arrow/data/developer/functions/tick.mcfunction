execute as @a[scores={carrot_stick=1..}] at @s anchored eyes run function developer:find_block
scoreboard players add @a[scores={carrot_stick=..-1}] carrot_stick 1