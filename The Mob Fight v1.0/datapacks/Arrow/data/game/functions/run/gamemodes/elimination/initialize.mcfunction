#define score_holder player
#define score_holder playerCountScore
#define tag eliminated

scoreboard players set playerCountScore Data -620
scoreboard players set player red 3
scoreboard players set player blue 3
weather clear
tag @a remove eliminated

function game:run/gamemodes/elimination/dead/player_check
scoreboard players operation playerCountScore red = player red
scoreboard players operation playerCountScore blue = player blue
scoreboard players operation playerCountScore red > playerCountScore blue
scoreboard players operation playerCountScore blue > playerCountScore red