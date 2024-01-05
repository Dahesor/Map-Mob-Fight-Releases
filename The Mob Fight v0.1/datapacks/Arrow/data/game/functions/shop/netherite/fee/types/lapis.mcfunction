scoreboard players set $feeItemcount calculator 30

execute at @e[type=marker,tag=altar_red,tag=!vand_busy] unless score stored_netherite red matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..1.2] run function game:shop/netherite/fee/check_red
execute at @e[type=marker,tag=altar_blue,tag=!vand_busy] unless score stored_netherite blue matches 1.. as @e[type=item,nbt={Item:{id:"minecraft:lapis_lazuli"}},distance=..1.2] run function game:shop/netherite/fee/check_blue