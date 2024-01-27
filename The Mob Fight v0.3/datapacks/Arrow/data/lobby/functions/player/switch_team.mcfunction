execute if block ~ ~-0.8 ~ #lobby:join_red unless predicate game:places/in_gaming_area run function lobby:team_join_red
execute if block ~ ~-0.8 ~ #lobby:join_blue unless predicate game:places/in_gaming_area run function lobby:team_join_blue
execute if block ~ ~-0.8 ~ #lobby:join_random unless predicate game:places/in_gaming_area run function lobby:team_join_random
execute if block ~ ~-0.8 ~ #lobby:tp_tutorial unless predicate game:places/in_gaming_area run function lobby:tp_tutorial
execute if block ~ ~-0.8 ~ #lobby:tp_lobby unless predicate game:places/in_gaming_area run function lobby:tp_lobby
execute if block ~ ~-0.8 ~ #lobby:spectate unless predicate game:places/in_gaming_area run function lobby:spectate
