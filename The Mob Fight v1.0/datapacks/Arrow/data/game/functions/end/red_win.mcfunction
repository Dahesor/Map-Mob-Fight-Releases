scoreboard players set $$%winner calculator 0
execute unless data storage run final_kill{Pos:[0.0d,0.0d,0.0d]} run return run function game:death/final/start
function game:end/reset
schedule function game:end/red_title 45t