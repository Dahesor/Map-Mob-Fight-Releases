data modify storage run genName.hold set from storage run run[0].Sell.display.Name
execute unless data storage run run[0].locked run function ui:pages/mob/lore_price
execute if data storage run run[0].locked run function ui:pages/mob/lore_technology