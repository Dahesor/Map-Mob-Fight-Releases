scoreboard players set gameID Data 1
scoreboard players reset Count Data
scoreboard players reset @a lastGame
scoreboard players set debug Data 0
scoreboard players set AdminJoinMidOn Options 1
scoreboard players set AdminSettingsOn Options 0
scoreboard players set AdminTeamsOn Options 0
scoreboard objectives remove genericCD
scoreboard objectives add genericCD dummy
scoreboard objectives remove hpPotionCD
scoreboard objectives add hpPotionCD dummy
scoreboard objectives remove calculator
scoreboard objectives add calculator dummy
scoreboard players set GameMode Data -1
function lobby:gamemode_change
execute if score game Data matches 1 run function op:force_stop
scoreboard objectives setdisplay sidebar
data remove storage developer:data Games
data remove storage developer:data General
data remove storage developer:data MobArrow
function game:default_settings
gamerule sendCommandFeedback false
function game:run/hint/load
function version