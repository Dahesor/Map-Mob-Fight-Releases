data modify storage version text set value "v1.1.0-Beta.4"
data modify storage version int set value 110

tellraw @s [{"translate":"info.version","with":[{"nbt":"text","color": "aqua","storage": "version"}]}]
tellraw @s [{"translate":"info.res_version","with":[{"translate":"resourcepack.version","color": "aqua"}]}]