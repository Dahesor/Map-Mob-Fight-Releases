attribute @s generic.armor_toughness modifier remove a-b-c-d-e
attribute @s generic.armor_toughness modifier remove 8e5f3313-43a6-42b0-87b7-35637aed701a
attribute @s generic.armor_toughness modifier remove 8e5f3313-43a6-42b0-87b7-35637aed704f
attribute @s generic.movement_speed modifier remove 662A6B8D-DA3E-4C1C-8813-96EA6097278D


execute if score game Data matches 1 run function game:topbar/refresh
scoreboard players set @s leave_game 0
scoreboard players set @a join_game 0
execute unless score @s lastGame matches 0.. run return run function game:utility/leave_game/back_lobby
execute if score game Data matches 0 run return run function game:utility/leave_game/game_ended
execute unless score @s lastGame = gameID Data run return run function game:utility/leave_game/game_ended