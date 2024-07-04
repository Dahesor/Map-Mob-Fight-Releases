function lobby:lobby_spinner/redstone
data modify storage run backup set from storage run PosRecord
data remove storage run PosResult
scoreboard players set Count calculator 0
function developer:gen_blue_pos/loop