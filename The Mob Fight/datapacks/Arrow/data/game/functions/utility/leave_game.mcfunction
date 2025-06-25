execute if score game Data matches 1 run function game:topbar/refresh
scoreboard players set @s leave_game 0
scoreboard players set @a join_game 0
execute unless score @s lastGame matches 0.. run return run function game:utility/leave_game/back_lobby
execute if score game Data matches 0 run return run function game:utility/leave_game/game_ended
execute unless score @s lastGame = gameID Data run return run function game:utility/leave_game/game_ended