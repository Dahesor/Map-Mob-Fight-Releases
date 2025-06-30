data modify storage run log.log insert -2 value {content:{text:"- ",color:"dark_gray",extra:[{text:"",color:"red"}]},time:99999,signature:0}
execute if entity @s[team=blue] run data modify storage run log.log[-2].content.extra[0].color set value "aqua"
data modify storage run log.log[-2].content.extra[0].text set from storage run name.this
execute store result storage run log.log[-2].time int 1 run scoreboard players get $gametime Data
execute store result storage run log.log[-2].signature int 1 run scoreboard players get $this calculator