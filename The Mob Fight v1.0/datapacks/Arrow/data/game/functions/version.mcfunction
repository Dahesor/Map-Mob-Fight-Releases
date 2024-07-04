data modify storage version text set value "v1.0"
data modify storage version int set value 100
#tellraw @s {"text":"In Development Unstable","color": "red"}
tellraw @s [{"translate":"info.version","with":[{"nbt":"text","color": "aqua","storage": "version"}]}]
tellraw @s [{"translate":"info.res_version","with":[{"translate":"resourcepack.version","color": "aqua"}]}]