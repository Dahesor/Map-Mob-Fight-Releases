execute if score realisticOreDrop Options matches 0 run kill @s
data merge entity @s {Item:{tag:{isGameRes:2b,CanDestroy:['#game:breakable'],HideFlags:12}},PickupDelay:8s}
execute at @s run tp @s @p