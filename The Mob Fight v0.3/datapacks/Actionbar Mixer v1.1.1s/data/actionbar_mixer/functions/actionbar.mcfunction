title @s[team=red] actionbar ["",{"nbt":"text[].content","storage": "actionbar_mixer:json","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}},{"nbt":"SelectedItem.tag.RawJSON[{Slot:[\"mainhand\"]}].value","entity": "@s","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}},{"nbt":"Attributes[{Name:\"minecraft:generic.armor_toughness\"}].Modifiers[].Name","entity": "@s","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}}]

title @s[team=blue] actionbar ["",{"nbt":"text[].content","storage": "actionbar_mixer:json","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}},{"nbt":"SelectedItem.tag.RawJSON[{Slot:[\"mainhand\"]}].value","entity": "@s","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}},{"nbt":"Attributes[{Name:\"minecraft:generic.armor_toughness\"}].Modifiers[].Name","entity": "@s","interpret": true,"separator": {"nbt":"separator","storage": "actionbar_mixer:json","interpret": true}}]



execute if score showWarning red matches 1.. if score #loop_20 calculator matches 1..10 run title @s[team=red] actionbar ["\ue904 ",{"translate":"warn.villager_in_danger","color": "red","bold": true}]

execute if score showWarning blue matches 1.. if score #loop_20 calculator matches 1..10 run title @s[team=blue] actionbar ["\ue904 ",{"translate":"warn.villager_in_danger","color": "red","bold": true}]