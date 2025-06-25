bossbar set map:load visible false
execute if score GameMode Data matches 3..4 if score GameLength Data matches ..3600 run return run function game:topbar/prepare/update
function game:topbar/single_splited/calculate