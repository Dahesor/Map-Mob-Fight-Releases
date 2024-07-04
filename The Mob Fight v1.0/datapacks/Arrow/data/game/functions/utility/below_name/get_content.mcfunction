execute store result storage run belowName.number int 1 run scoreboard players get @s health
execute if score @s health matches ..0 run data modify storage run belowName.number set value 1

data modify storage run belowName.format set value '{"text":"c","font":"icon"}'
execute if score GameMode Data matches 1 run data modify storage run belowName.format set value '{"text":"h","font":"icon"}'

scoreboard players set @s calculator 0
execute store result score @s calculator run data get entity @s TicksFrozen
execute if score @s calculator matches 60.. run data modify storage run belowName.format set value '{"text":"g","font":"icon"}'

execute if predicate game:player/health/poison run data modify storage run belowName.format set value '{"text":"e","font":"icon"}'
execute if predicate game:player/health/wither run data modify storage run belowName.format set value '{"text":"f","font":"icon"}'

scoreboard players set @s calculator 0
execute store result score @s calculator run data get entity @s AbsorptionAmount
execute if score @s calculator matches 1.. run data modify storage run belowName.format set value '{"text":"d","font":"icon"}'



execute if predicate game:player/health/dying run data modify storage run belowName.format set value '{"text":"C","font":"icon"}'
execute if score GameMode Data matches 1 if predicate game:player/health/dying run data modify storage run belowName.format set value '{"text":"H","font":"icon"}'
scoreboard players set @s calculator 0
execute store result score @s calculator run data get entity @s AbsorptionAmount
execute if score @s calculator matches 1.. if predicate game:player/health/dying run data modify storage run belowName.format set value '{"text":"D","font":"icon"}'
scoreboard players set @s calculator 0
execute store result score @s calculator run data get entity @s TicksFrozen
execute if score @s calculator matches 60.. if predicate game:player/health/dying run data modify storage run belowName.format set value '{"text":"G","font":"icon"}'
execute if predicate game:player/health/poison_dying run data modify storage run belowName.format set value '{"text":"E","font":"icon"}'
execute if predicate game:player/health/wither_dying run data modify storage run belowName.format set value '{"text":"F","font":"icon"}'

data merge storage run {belowName:{0:'',1:'',2:'',3:'',4:'',5:'',6:'',7:''}}
execute if entity @s[nbt={active_effects:[{id:"minecraft:regeneration"}]}] run data modify storage run belowName.0 set value 'O'
execute if entity @s[nbt={active_effects:[{id:"minecraft:weakness"}]}] run data modify storage run belowName.1 set value 'I'
execute if entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] run data modify storage run belowName.2 set value 'J'
execute if entity @s[nbt={active_effects:[{id:"minecraft:mining_fatigue"}]}] run data modify storage run belowName.3 set value 'K'
execute if entity @s[nbt={active_effects:[{id:"minecraft:strength"}]}] run data modify storage run belowName.4 set value 'L'
execute if entity @s[nbt={active_effects:[{id:"minecraft:nausea"}]}] run data modify storage run belowName.5 set value 'M'
execute if entity @s[nbt={active_effects:[{id:"minecraft:darkness"}]}] run data modify storage run belowName.6 set value 'N'
execute if entity @s[nbt={active_effects:[{id:"minecraft:fire_resistance"}]}] run data modify storage run belowName.7 set value 'P'