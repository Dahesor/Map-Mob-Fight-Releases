scoreboard players set visible red 0
scoreboard players set visible blue 0
scoreboard players set flare red 0
scoreboard players set flare blue 0
tag @a remove THUNDER.under_sky

execute as @a[gamemode=!spectator] run function game:run/gamemodes/thunder/visible/dark_shift

## defines

#>
#@internal
#define score_holder #thunder

#>
#@internal
#define score_holder visible

#>
#@internal
#define score_holder flare

#>
#@internal
#define tag THUNDER.under_sky

#>
#@internal
#define tag THUNDER.flare

#>
#@internal
#define storage thunder:event

#>
#@internal
#alias uuid sprint_UUID 662A6B8D-DA3E-4C1C-8813-96EA6097278D

