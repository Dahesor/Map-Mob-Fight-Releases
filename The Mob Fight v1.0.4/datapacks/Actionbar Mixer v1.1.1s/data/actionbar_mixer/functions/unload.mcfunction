return fail

scoreboard objectives remove Calc.acBarMixer
data remove storage actionbar_mixer:json separator
data remove storage actionbar_mixer:json text
tellraw @s {"translate":"Actionbar Mixer已卸载，请在重新加载之前删除或禁用","color": "red"}