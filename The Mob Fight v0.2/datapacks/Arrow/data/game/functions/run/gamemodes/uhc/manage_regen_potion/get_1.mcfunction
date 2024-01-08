scoreboard players add @s[scores={regenPotionUHC=..9}] regenPotionUHC 1
tellraw @a[scores={regenPotionUHC=..9}] [{"text": "[!] ","color": "yellow"},{"translate":"regenpotion.more","with":[{"text":"1","color": "aqua"}]}]
execute at @s[scores={regenPotionUHC=..9}] run playsound entity.experience_orb.pickup master @s