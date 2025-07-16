advancement revoke @s only game:utility/got_hurt
execute if entity @s[gamemode=spectator] run return fail
tag @s add renew_hp