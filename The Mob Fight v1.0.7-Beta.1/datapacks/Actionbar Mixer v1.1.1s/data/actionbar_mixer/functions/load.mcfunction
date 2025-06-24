scoreboard objectives add Calc.acBarMixer dummy
execute unless score #DataVersion Calc.acBarMixer matches 2.. run scoreboard players set #DataVersion Calc.acBarMixer 1
execute unless score #loaded Calc.acBarMixer matches 1 run data merge storage actionbar_mixer:json {separator:'" "'}
scoreboard players set #loaded Calc.acBarMixer 1