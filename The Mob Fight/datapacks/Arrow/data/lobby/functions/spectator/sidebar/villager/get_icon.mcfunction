execute if data storage run vil.this{flash:1b} if score $vil_flash calculator matches 1 run return run data modify storage run string set value ""
execute store result score $current calculator run data get storage run vil.this.hp

execute if score $current calculator matches 10.. if score $side calculator matches 0 run return run data modify storage run string set value ""
execute if score $current calculator matches 8..9 if score $side calculator matches 0 run return run data modify storage run string set value ""
execute if score $current calculator matches 6..7 if score $side calculator matches 0 run return run data modify storage run string set value ""
execute if score $current calculator matches 4..5 if score $side calculator matches 0 run return run data modify storage run string set value ""
execute if score $current calculator matches 2..3 if score $side calculator matches 0 run return run data modify storage run string set value ""
execute if score $current calculator matches ..1 if score $side calculator matches 0 run return run data modify storage run string set value ""

execute if score $current calculator matches 10.. run return run data modify storage run string set value ""
execute if score $current calculator matches 8..9 run return run data modify storage run string set value ""
execute if score $current calculator matches 6..7 run return run data modify storage run string set value ""
execute if score $current calculator matches 4..5 run return run data modify storage run string set value ""
execute if score $current calculator matches 2..3 run return run data modify storage run string set value ""
execute if score $current calculator matches ..1 run return run data modify storage run string set value ""
data modify storage run string set value ""