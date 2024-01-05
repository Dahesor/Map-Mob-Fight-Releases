execute if score lobby_state Data matches 1 run function lobby:signs/items/switch_map
execute if score lobby_state Data matches 2 run function lobby:signs/items/switch_map_locked
execute if score lobby_state Data matches -1 run function lobby:signs/items/switch_map_busy
execute if score lobby_state Data matches 3 run function lobby:signs/items/switch_map_running
execute if score lobby_state Data matches 1 run function lobby:signs/items/start_game
execute unless score lobby_state Data matches 1 run function lobby:signs/items/start_game_locked
execute if score lobby_state Data matches 1 run function lobby:signs/items/settings
execute if score lobby_state Data matches 2.. run function lobby:signs/items/settings_locked
execute if score lobby_state Data matches -1 run function lobby:signs/items/settings_busy
execute if score lobby_state Data matches 1 run function lobby:signs/items/switch_gamemode
function lobby:signs/items/reload_credit