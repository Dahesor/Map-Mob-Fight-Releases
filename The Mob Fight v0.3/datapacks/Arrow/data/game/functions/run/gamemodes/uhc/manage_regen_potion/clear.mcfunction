effect clear @a[scores={regenPotionUHC=..-1}] regeneration
tellraw @a[scores={regenPotionUHC=..-1}] [{"text": "[!] ","color": "red"},{"translate":"regenpotion.over"}]
scoreboard players set @a[scores={regenPotionUHC=..-1}] regenPotionUHC 0
