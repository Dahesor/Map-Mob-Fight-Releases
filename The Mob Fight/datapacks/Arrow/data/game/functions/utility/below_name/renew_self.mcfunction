tag @s remove renew_hp
execute unless score game Data matches 1.. run return run scoreboard players display numberformat @s belowName fixed {"translate":"status.waiting","color": "gray"}

function game:utility/below_name/get_content
function game:utility/below_name/macro with storage run belowName