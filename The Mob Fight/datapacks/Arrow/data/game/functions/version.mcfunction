data modify storage version text set value "v1.1.7"
data modify storage version int set value 117

tellraw @s [{"translate":"info.version","with":[{"nbt":"text","color": "aqua","storage": "version"}]}]
tellraw @s [{"translate":"info.res_version","with":[{"translate":"resourcepack.version","color": "aqua"}]}]