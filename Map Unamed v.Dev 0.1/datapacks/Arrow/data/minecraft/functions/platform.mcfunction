execute unless block 0 50 0 cobblestone run fill 8 50 8 -8 50 -8 stone
execute unless block 0 50 0 cobblestone run setblock 3 51 6 ender_chest
execute unless block 0 50 0 cobblestone run setblock 0 51 0 redstone_block
execute unless block 0 50 0 cobblestone run setblock 0 50 0 cobblestone
execute if block 0 50 0 cobblestone unless block 0 51 0 redstone_block run fill 8 50 8 -8 51 -8 air
setblock 0 51 0 air