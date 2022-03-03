#scoreboard players set game Data 1
scoreboard players set GameLength Data 0
scoreboard players set @a Death 0
scoreboard players set @a sword 1
scoreboard players set @a axe 1
scoreboard players set @a crossbow 1
scoreboard players set alchemyLevel red 0
scoreboard players set alchemyLevel blue 0
scoreboard players set BarracksLevel red 0
scoreboard players set BarracksLevel blue 0
scoreboard players set magicLabLevel red 0
scoreboard players set magicLabLevel blue 0
scoreboard players set metalWorkLevel red 0
scoreboard players set metalWorkLevel blue 0
scoreboard players set supplyBuckupLevel red 0
scoreboard players set supplyBuckupLevel blue 0
scoreboard players set poisonBoilLevel red 0
scoreboard players set poisonBoilLevel blue 0
scoreboard players set fireEssenceLevel red 0
scoreboard players set fireEssenceLevel blue 0

#clear @a
#execute as @a run function game:plugin/clear_enderchest
#gamemode adventure @a
function game:shop/initialize