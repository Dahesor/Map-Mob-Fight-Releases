#define tag super_villager
scoreboard players set VILLAGER.super Data 1
kill @e[type=marker,tag=villager_blue]
kill @e[type=marker,tag=villager_red]
tp @e[type=villager,tag=villager_blue] ~ -30 ~
tp @e[type=villager,tag=villager_red] ~ -30 ~
kill @e[type=villager,tag=villager_blue]
kill @e[type=villager,tag=villager_red]

function game:run/gamemodes/villager/sudden_death/stack
function game:run/gamemodes/villager/sudden_death/stack
function game:run/gamemodes/villager/sudden_death/stack
function game:run/gamemodes/villager/sudden_death/update_count
function game:topbar/refresh
