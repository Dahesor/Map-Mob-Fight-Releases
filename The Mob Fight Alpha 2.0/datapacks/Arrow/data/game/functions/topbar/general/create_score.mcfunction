execute if score score red matches 10000.. run data merge storage run {topbar:{left:'{"score":{"objective":"red","name": "score"},"color":"red"}'}} 
execute if score score red matches 1000..9999 run data merge storage run {topbar:{left:'[{"score":{"objective":"red","name": "score"},"color":"red"}," "]'}} 
execute if score score red matches 100..999 run data merge storage run {topbar:{left:'[{"score":{"objective":"red","name": "score"},"color":"red"},"  "]'}} 
execute if score score red matches 10..99 run data merge storage run {topbar:{left:'[{"score":{"objective":"red","name": "score"},"color":"red"},"    "]'}} 
execute if score score red matches 0..9 run data merge storage run {topbar:{left:'[{"score":{"objective":"red","name": "score"},"color":"red"},"      "]'}} 

execute if score score blue matches 10000.. run data merge storage run {topbar:{right:'{"score":{"objective":"blue","name": "score"},"color":"aqua"}'}} 
execute if score score blue matches 1000..9999 run data merge storage run {topbar:{right:'[" ",{"score":{"objective":"blue","name": "score"},"color":"aqua"}]'}} 
execute if score score blue matches 100..999 run data merge storage run {topbar:{right:'["  ",{"score":{"objective":"blue","name": "score"},"color":"aqua"}]'}} 
execute if score score blue matches 10..99 run data merge storage run {topbar:{right:'["    ",{"score":{"objective":"blue","name": "score"},"color":"aqua"}]'}} 
execute if score score blue matches 0..9 run data merge storage run {topbar:{right:'["      ",{"score":{"objective":"blue","name": "score"},"color":"aqua"}]'}} 