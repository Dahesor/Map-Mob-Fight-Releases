data modify storage run macro_death.new.HandItems set from entity @s HandItems
data modify storage run macro_death.new.ArmorItems set from entity @s ArmorItems
execute store success score @s calculator run data modify storage run macro_death.new set from storage run macro_death.data

execute if score @s calculator matches 0 run damage @s 30 generic_kill