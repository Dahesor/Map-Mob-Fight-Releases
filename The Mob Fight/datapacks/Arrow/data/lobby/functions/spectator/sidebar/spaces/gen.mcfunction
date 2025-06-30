scoreboard players add #spaceGen calculator 1
execute if score #spaceGen calculator matches 4 run scoreboard players set #spaceGen calculator 0
execute if score #spaceGen calculator matches 0 run function lobby:spectator/sidebar/spaces/1
execute if score #spaceGen calculator matches 1 run function lobby:spectator/sidebar/spaces/2
execute if score #spaceGen calculator matches 2 run function lobby:spectator/sidebar/spaces/3
execute if score #spaceGen calculator matches 3 run function lobby:spectator/sidebar/spaces/4