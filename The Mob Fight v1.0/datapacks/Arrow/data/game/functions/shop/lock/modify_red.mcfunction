execute unless score science_techno red matches 1.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{science:1b}}]
execute unless score science_techno red matches 2.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{science:2b}}]
execute unless score science_techno red matches 3.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{science:3b}}]
execute unless score magic_occult red matches 1.. run data remove storage run Mob[{Technology:{magic:1b}}]
execute unless score magic_occult red matches 1.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{magic:1b}}]
execute unless score magic_occult red matches 2.. run data remove storage run Mob[{Technology:{magic:2b}}]
execute unless score magic_occult red matches 2.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{magic:2b}}]
execute unless score magic_occult red matches 3.. run data remove storage run Mob[{Technology:{magic:3b}}]
execute unless score magic_occult red matches 3.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{magic:3b}}]
execute unless score society_populate red matches 1.. run data remove storage run Mob[{Technology:{society:1b}}]
execute unless score society_populate red matches 1.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{society:1b}}]
execute unless score society_populate red matches 2.. run data remove storage run Mob[{Technology:{society:2b}}]
execute unless score society_populate red matches 2.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{society:2b}}]
execute unless score society_populate red matches 3.. run data remove storage run Mob[{Technology:{society:3b}}]
execute unless score society_populate red matches 3.. run data modify storage run Mob append from storage game:red_shop Mob[{Technology:{society:3b}}]
data modify storage run Mob[] merge value {Sell:{CustomModelData:10001},locked:1b}