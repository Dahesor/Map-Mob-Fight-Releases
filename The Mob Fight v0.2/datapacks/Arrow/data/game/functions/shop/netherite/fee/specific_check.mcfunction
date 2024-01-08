scoreboard players set $feeItemcount calculator 0

execute if score vandFeeType Data matches ..0 run function game:shop/netherite/fee/types/dirt
execute if score vandFeeType Data matches 1 run function game:shop/netherite/fee/types/iron
execute if score vandFeeType Data matches 2 run function game:shop/netherite/fee/types/gold
execute if score vandFeeType Data matches 3 run function game:shop/netherite/fee/types/copper
execute if score vandFeeType Data matches 4 run function game:shop/netherite/fee/types/lapis
execute if score vandFeeType Data matches 5 run function game:shop/netherite/fee/types/diamond_cheap
execute if score vandFeeType Data matches 6.. run function game:shop/netherite/fee/types/diamond_bad

