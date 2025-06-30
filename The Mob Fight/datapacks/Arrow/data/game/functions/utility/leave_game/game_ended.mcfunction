execute if score debug Data matches 1.. run return fail
execute store result score #player calculator if entity @a
execute unless score #player calculator matches 2.. run schedule function op:force_stop 2s
tp @s 0.50 58.5 110.5 -180.00 0.0
clear @s
gamemode adventure
effect clear @s
tag @s remove last_winner
scoreboard players set @s surrender 0
scoreboard players set @s Death 0
scoreboard players set @s sword 1
scoreboard players set @s armor 2
scoreboard players set @s crossbow 1
scoreboard players set @s pickaxe 1
scoreboard players set @s deathSourceCD 0
scoreboard players set @s revive_cooldown -21
scoreboard players set @s harvest_level 0
scoreboard players set @s regenPotionUHC 5
scoreboard players reset @s bossbar
scoreboard players reset @s scb.death
scoreboard players reset @s scb.def
scoreboard players reset @s scb.shot
scoreboard players reset @s scb.eco
scoreboard players reset @s scb.support
scoreboard players operation @s lastGame = gameID Data
tag @s remove need_team
tag @s remove canBuyTotem
tag @s remove eliminated
tag @s remove final_camera
tag @s remove using_UpRocket
tag @s remove using_UpRocket_1
tag @s remove using_UpRocket_2
tag @s remove using_UpRocket_3
tag @a remove shop.left.limit
tag @a remove shop.right.limit
attribute @s generic.attack_speed base set 4.3
attribute @s generic.max_health base set 20
tag @s remove returning
tellraw @s [{"translate": "chat.head.game","color": "red"}," ",{"translate":"info.last_game_ended"}]