execute store result score $red crazyMode run execute if entity @e[tag=crazy_mode_mob,type=zombie,predicate=map:in_red]
execute if score $red crazyMode matches 36.. run kill @e[tag=crazy_mode_mob,type=zombie,predicate=map:in_red,limit=5,sort=random]
execute store result score $blue crazyMode run execute if entity @e[tag=crazy_mode_mob,type=zombie,predicate=map:in_blue]
execute if score $blue crazyMode matches 36.. run kill @e[tag=crazy_mode_mob,type=zombie,predicate=map:in_blue,limit=5,sort=random]