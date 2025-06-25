execute if score GameMode Data matches 1 run advancement grant @a[team=red] only lobby:gamemode/uhc
execute if score GameMode Data matches 1 run advancement grant @a[team=blue] only lobby:gamemode/uhc
execute if score GameMode Data matches 2 run advancement grant @a[team=red] only lobby:gamemode/thunder
execute if score GameMode Data matches 2 run advancement grant @a[team=blue] only lobby:gamemode/thunder
execute if score GameMode Data matches 3 run advancement grant @a[team=red] only lobby:gamemode/villager
execute if score GameMode Data matches 3 run advancement grant @a[team=blue] only lobby:gamemode/villager
execute if score GameMode Data matches 4 run advancement grant @a[team=red] only lobby:gamemode/elimination
execute if score GameMode Data matches 4 run advancement grant @a[team=blue] only lobby:gamemode/elimination

execute if score GameMode Data matches 4 if score GameLength Data >= MaxGameLength Options if score $$%winner calculator matches 0 run advancement grant @a[team=red] only lobby:survivor
execute if score GameMode Data matches 4 if score GameLength Data >= MaxGameLength Options if score $$%winner calculator matches 1 run advancement grant @a[team=blue] only lobby:survivor

execute if score science_techno red matches 3 if score society_populate red matches 3 if score magic_occult red matches 3 run advancement grant @a[team=red] only lobby:tech
execute if score science_techno blue matches 3 if score society_populate blue matches 3 if score magic_occult blue matches 3 run advancement grant @a[team=blue] only lobby:tech