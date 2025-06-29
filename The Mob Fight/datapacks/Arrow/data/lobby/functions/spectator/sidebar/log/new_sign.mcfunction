data modify storage run log.log insert -2 value {content:{text:"- ",color:"dark_gray",extra:[{text:"",color:"red"}]},time:99999}
execute if entity @s[team=blue] run data modify storage run log.log[-2].content.extra[0].color set value "aqua"
data modify storage run log.log[-2].content.extra[0].text set from storage run name.this
data modify storage run log.log[-2].time set value 999999999