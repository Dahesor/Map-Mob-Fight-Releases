data modify storage game:shop random_list set value []

data modify storage game:shop random_list append value {icon:"ui:player/random/anti_arrow",item:"game:item/projectile_shield",Price:{lapis:16b,copper:10b},Name:'{"translate":"item.anti_arrow","color": "gold","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/heal_trident",item:"game:item/heal_trident",Price:{dirt:10b,lapis:8b,diamond:4b},Name:'{"translate":"item.heal_trident","color": "yellow","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/the_anvil",item:"game:item/the_anvil",Price:{dirt:5,iron:12},Name:'{"translate":"item.anvil","color": "dark_purple","italic": false}'}

execute unless score GameMode Data matches 1 run data modify storage game:shop random_list append value {icon:"ui:player/instant_heal",item:"game:item/instant_heal_spell",Price:{lapis:10b,gold:3b},Name:'{"translate":"瞬间治疗符","color": "green","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/mine_super",item:"game:item/mine_super_single",Price:{dirt:16b,diamond:4b,copper:6b},Name:'{"translate":"item.mine.super","color": "gold","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/crystal_marker",item:"game:item/crystal_marker",Price:{dirt:10b,diamond:10b},Name:'{"translate":"item.crystal_marker","color": "dark_purple","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/type_wipe",item:"game:item/type_wipe",Price:{lapis:25b},Name:'{"translate":"item.type_wipe","color": "gold","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/golden_carrot",item:"game:package/golden_carrot",Price:{dirt:60b},Name:'[{"translate":"item.minecraft.golden_carrot","color": "green","italic": false}," × 12"]'}

data modify storage game:shop random_list append value {icon:"ui:player/random/slowfall",item:"game:package/slowfall",Price:{dirt:8b,diamond:1b,gold:4b},Name:'{"translate":"item.minecraft.splash_potion.effect.slow_falling","color": "green","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/turtle",item:"game:package/turtle",Price:{dirt:8b,diamond:4b,iron:20b},Name:'{"translate":"item.minecraft.potion.effect.turtle_master","color": "blue","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/weakness",item:"game:package/weakness",Price:{dirt:8b,diamond:2b,lapis:5b},Name:'{"translate":"item.minecraft.splash_potion.effect.weakness","color": "green","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/glowing",item:"game:package/glowing",Price:{dirt:8b,gold:3b,lapis:4b},Name:'[{"translate":"effect.minecraft.glowing","color": "green","italic": false}," ",{"translate":"item.minecraft.lingering_potion"}]'}

data modify storage game:shop random_list append value {icon:"ui:player/random/power_star",item:"game:item/power_star",Price:{lapis:54b},Name:'{"translate":"item.power_star","color": "gold","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/iron_golem",item:"game:package/iron_golem",Price:{iron:36b},Name:'{"translate":"item.minecraft.iron_golem_spawn_egg","color": "dark_purple","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/snow_golem",item:"game:package/snow_golem",Price:{copper:19b},Name:'{"translate":"item.minecraft.snow_golem_spawn_egg","color": "green","italic": false}'}

data modify storage game:shop random_list append value {icon:"ui:player/random/tp",item:"game:item/tp",Price:{lapis:20b},Name:'{"translate":"item.tp","color": "gold","italic": false}'}