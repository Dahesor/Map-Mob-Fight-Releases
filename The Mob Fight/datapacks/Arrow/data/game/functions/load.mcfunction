scoreboard objectives add calculator dummy
scoreboard objectives add UI dummy
scoreboard objectives add Data dummy
scoreboard objectives add genericCD dummy
scoreboard objectives add Death deathCount
scoreboard objectives add Options dummy
scoreboard objectives add SubUI dummy
scoreboard objectives add sword dummy
scoreboard objectives add crossbow dummy
scoreboard objectives add pickaxe dummy
scoreboard objectives add armor dummy
scoreboard objectives add hpPotionCD dummy
scoreboard objectives add Payment dummy
scoreboard objectives add red dummy
scoreboard objectives add blue dummy
scoreboard objectives add mobDEF dummy
scoreboard objectives add lastGame dummy
scoreboard objectives add deathSourceCD dummy
scoreboard objectives add SETTING.villager dummy
scoreboard objectives add revive_cooldown dummy
scoreboard objectives add carrot_stick used:carrot_on_a_stick
scoreboard objectives add warped_stick used:warped_fungus_on_a_stick
scoreboard objectives add leave_game custom:leave_game
scoreboard objectives add join_game trigger
scoreboard objectives add harvest_level dummy
scoreboard objectives add health health
scoreboard objectives add belowName dummy ""
scoreboard objectives add convertEnergy dummy
scoreboard objectives add convertItem dummy
scoreboard objectives add UID dummy
scoreboard objectives add convertCount dummy
scoreboard objectives add regenPotionUHC dummy
scoreboard objectives add surrender dummy
scoreboard objectives add bossbar dummy
scoreboard objectives add match dummy
scoreboard objectives add spec trigger
scoreboard objectives add scb.death dummy
scoreboard objectives add scb.shot dummy
scoreboard objectives add scb.def dummy
scoreboard objectives add scb.eco dummy
scoreboard objectives add scb.support dummy
scoreboard objectives setdisplay below_name belowName
scoreboard objectives modify belowName displayname ""
# numbers
scoreboard players set #10000 calculator 10000
scoreboard players set #6000 calculator 6000
scoreboard players set #1800 calculator 1800
scoreboard players set #1200 calculator 1200
scoreboard players set #1000 calculator 1000
scoreboard players set #400 calculator 400
scoreboard players set #100 calculator 100
scoreboard players set #44 calculator 44
scoreboard players set #41 calculator 41
scoreboard players set #40 calculator 40
scoreboard players set #35 calculator 35
scoreboard players set #30 calculator 30
scoreboard players set #25 calculator 25
scoreboard players set #22 calculator 22
scoreboard players set #20 calculator 20
scoreboard players set #18 calculator 18
scoreboard players set #16 calculator 16
scoreboard players set #12 calculator 12
scoreboard players set #10 calculator 10
scoreboard players set #8 calculator 8
scoreboard players set #7 calculator 7
scoreboard players set #5 calculator 5
scoreboard players set #4 calculator 4
scoreboard players set #3 calculator 3
scoreboard players set #2 calculator 2
scoreboard players set #1 calculator 1
scoreboard players set #-1 calculator -1
# numbers

function game:version

# team
team add red {"color": "red","text": "Red"}
team add blue {"color": "blue","text": "Blue"}
team modify red friendlyFire false
team modify blue friendlyFire false
team modify red seeFriendlyInvisibles true
team modify blue seeFriendlyInvisibles true
team add spec {"color": "dark_gray","text": "Spectator"}
team modify spec friendlyFire false
team modify spec seeFriendlyInvisibles true
team modify spec color dark_gray

team add spec_log {"color": "dark_gray","text": "Spectator"}
team modify spec_log friendlyFire false
team modify spec_log seeFriendlyInvisibles true
team modify spec_log color gray

team add spec_eco {"color": "dark_gray","text": "Spectator"}
team modify spec_eco friendlyFire false
team modify spec_eco seeFriendlyInvisibles true
team modify spec_eco color white

# team

# bossbar
bossbar add top:single ""
bossbar set top:single players @a
bossbar add map:load ""
bossbar set map:load players @a
bossbar set map:load max 14
bossbar set map:load style notched_10
bossbar set map:load visible false
# bossbar

data modify storage game:netherite_shop red.icons set value [{id:"gold_ingot",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:11}},{id:"arrow",tag:{}},{id:"redstone",tag:{}},{id:"redstone_torch",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:1}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:6}},{id:"spectral_arrow",tag:{CustomModelData:10}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:4}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:3}},{id:"feather",tag:{}},{id:"book",tag:{}},{id:"bone",tag:{}},{id:"leather",tag:{}},{id:"iron_pickaxe",tag:{}},{id:"brick",tag:{}},{id:"iron_ingot",tag:{}},{id:"diamond",tag:{}},{id:"netherite_ingot",tag:{}},{id:"diamond_shovel",tag:{Enchantments:[{}]}},{id:"tipped_arrow",tag:{CustomModelData:707}},{id:"tipped_arrow",tag:{CustomModelData:402}},{id:"netherite_sword"}]
data modify storage game:netherite_shop blue.icons set value [{id:"gold_ingot",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:11}},{id:"arrow",tag:{}},{id:"redstone",tag:{}},{id:"redstone_torch",tag:{}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:1}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:6}},{id:"spectral_arrow",tag:{CustomModelData:10}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:4}},{id:"warped_fungus_on_a_stick",tag:{CustomModelData:3}},{id:"feather",tag:{}},{id:"book",tag:{}},{id:"bone",tag:{}},{id:"leather",tag:{}},{id:"iron_pickaxe",tag:{}},{id:"brick",tag:{}},{id:"iron_ingot",tag:{}},{id:"diamond",tag:{}},{id:"netherite_ingot",tag:{}},{id:"diamond_shovel",tag:{Enchantments:[{}]}},{id:"tipped_arrow",tag:{CustomModelData:707}},{id:"tipped_arrow",tag:{CustomModelData:402}},{id:"netherite_sword"}]
data modify storage game:netherite_shop red.icons[] merge value {Count:1b}
data modify storage game:netherite_shop blue.icons[] merge value {Count:1b}
# >