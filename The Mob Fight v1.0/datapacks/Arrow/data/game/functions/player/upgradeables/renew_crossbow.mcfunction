scoreboard players remove @s crossbow 1


execute if data storage run crossbowTemp.id at @s run summon item ~ ~ ~ {Item:{id:"barrier",tag:{isConstant:1b,ruturn_arrowing:1b},Count:1b},PickupDelay:1s}
execute if data storage run crossbowTemp.id at @s run data modify entity @e[type=item,limit=1,sort=nearest,nbt={Item:{tag:{ruturn_arrowing:1b}}}] Item set from storage run crossbowTemp
data remove storage run crossbowTemp

execute if data entity @s Inventory[{Slot:0b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.0 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:1b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.1 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:2b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.2 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:3b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.3 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:4b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.4 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:5b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.5 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:6b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.6 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:7b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.7 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:8b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s hotbar.8 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:9b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.0 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:10b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.1 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:11b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.2 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:12b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.3 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:13b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.4 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:14b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.5 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:15b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.6 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:16b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.7 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:17b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.8 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:18b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.9 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:19b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.10 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:20b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.11 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:21b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.12 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:22b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.13 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:23b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.14 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:24b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.15 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:25b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.16 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:26b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.17 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:27b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.18 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:28b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.19 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:29b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.20 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:30b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.21 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:31b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.22 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:32b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.23 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:33b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.24 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:34b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.25 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:35b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s inventory.26 loot game:player/crossbow
execute if data entity @s Inventory[{Slot:-106b,id:"minecraft:crossbow"}].tag{isConstant:1b} run loot replace entity @s weapon.offhand loot game:player/crossbow




scoreboard players add @s crossbow 1