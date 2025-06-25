scoreboard players set $$%winner calculator 1
execute unless data storage run final_kill{Pos:[0.0d,0.0d,0.0d]} run return run function game:death/final/start
function game:end/reset
schedule function game:end/blue_title 45t


