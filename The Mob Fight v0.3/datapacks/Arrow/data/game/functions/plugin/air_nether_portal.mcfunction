advancement revoke @s only game:enter_nether_portal
fill ~5 ~5 ~5 ~-5 ~-5 ~-5 air replace nether_portal
tellraw @s {"translate":"message.nether_disabled","color": "red"}