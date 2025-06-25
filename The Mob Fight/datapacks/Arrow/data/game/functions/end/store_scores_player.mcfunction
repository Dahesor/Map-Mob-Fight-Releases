data modify storage developer:data Games[-1].Players append value {data:{sword:-1,axe:-1,crossbow:-1,pickaxe:-1}}
function game:plugin/get_player_name
data modify storage developer:data Games[-1].Players[-1].Name set from storage run playerName
execute store result storage developer:data Games[-1].Players[-1].data.sword int 1 run scoreboard players get @s sword
execute store result storage developer:data Games[-1].Players[-1].data.axe int 1 run scoreboard players get @s axe
execute store result storage developer:data Games[-1].Players[-1].data.crossbow int 1 run scoreboard players get @s crossbow
execute store result storage developer:data Games[-1].Players[-1].data.pickaxe int 1 run scoreboard players get @s pickaxe