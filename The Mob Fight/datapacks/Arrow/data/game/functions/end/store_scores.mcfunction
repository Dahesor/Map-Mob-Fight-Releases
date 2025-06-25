data modify storage developer:data Games append value {EndTime:-1,GameID:0,EndAt:1L,MaxTime:-1,Players:[],Red:{sharpness:-1,sweep:-1,efficiency:-1,blast_protection:-1,proj_protection:-1,power:-1,Tech:{magic_occult:-1,science_techno:-1,society_populate:-1},FinalScore:-1,beemLevel:-1,stored_netherite:-1,crystal_count:-1,additional_shop:-1,pigmanSlaves:-1,harvest_level:-1},Blue:{sharpness:-1,sweep:-1,efficiency:-1,blast_protection:-1,proj_protection:-1,power:-1,Tech:{magic_occult:-1,science_techno:-1,society_populate:-1},FinalScore:-1,beemLevel:-1,stored_netherite:-1,crystal_count:-1,additional_shop:-1,pigmanSlaves:-1,harvest_level:-1}}

data modify storage developer:data Games[-1].mapName set from storage run map.displayName

execute store result storage developer:data Games[-1].EndTime int 1 run scoreboard players get GameLength Data
execute store result storage developer:data Games[-1].GameID int 1 run scoreboard players get gameID Data
execute store result storage developer:data Games[-1].EndAt long 1 run time query gametime
execute store result storage developer:data Games[-1].MaxTime int 1 run scoreboard players get MaxGameLength Options

execute store result storage developer:data Games[-1].Red.sharpness int 1 run scoreboard players get sharpness red
execute store result storage developer:data Games[-1].Red.sweep int 1 run scoreboard players get sweep red
execute store result storage developer:data Games[-1].Red.efficiency int 1 run scoreboard players get efficiency red
execute store result storage developer:data Games[-1].Red.blast_protection int 1 run scoreboard players get blast_protection red
execute store result storage developer:data Games[-1].Red.proj_protection int 1 run scoreboard players get proj_protection red
execute store result storage developer:data Games[-1].Red.power int 1 run scoreboard players get power red
execute store result storage developer:data Games[-1].Red.Tech.magic_occult int 1 run scoreboard players get magic_occult red
execute store result storage developer:data Games[-1].Red.Tech.science_techno int 1 run scoreboard players get science_techno red
execute store result storage developer:data Games[-1].Red.Tech.society_populate int 1 run scoreboard players get society_populate red
execute store result storage developer:data Games[-1].Red.FinalScore int 1 run scoreboard players get score red
execute store result storage developer:data Games[-1].Red.beemLevel int 1 run scoreboard players get beemLevel red
execute store result storage developer:data Games[-1].Red.stored_netherite int 1 run scoreboard players get stored_netherite red
execute store result storage developer:data Games[-1].Red.crystal_count int 1 run scoreboard players get crystal_count red
execute store result storage developer:data Games[-1].Red.additional_shop int 1 run scoreboard players get additional_shop red
execute store result storage developer:data Games[-1].Red.pigmanSlaves int 1 run scoreboard players get pigmanSlaves red
execute store result storage developer:data Games[-1].Red.harvest_level int 1 run scoreboard players get @p[team=red] harvest_level

execute store result storage developer:data Games[-1].Blue.sharpness int 1 run scoreboard players get sharpness blue
execute store result storage developer:data Games[-1].Blue.sweep int 1 run scoreboard players get sweep blue
execute store result storage developer:data Games[-1].Blue.efficiency int 1 run scoreboard players get efficiency blue
execute store result storage developer:data Games[-1].Blue.blast_protection int 1 run scoreboard players get blast_protection blue
execute store result storage developer:data Games[-1].Blue.proj_protection int 1 run scoreboard players get proj_protection blue
execute store result storage developer:data Games[-1].Blue.power int 1 run scoreboard players get power blue
execute store result storage developer:data Games[-1].Blue.Tech.magic_occult int 1 run scoreboard players get magic_occult blue
execute store result storage developer:data Games[-1].Blue.Tech.science_techno int 1 run scoreboard players get science_techno blue
execute store result storage developer:data Games[-1].Blue.Tech.society_populate int 1 run scoreboard players get society_populate blue
execute store result storage developer:data Games[-1].Blue.FinalScore int 1 run scoreboard players get score blue
execute store result storage developer:data Games[-1].Blue.beemLevel int 1 run scoreboard players get beemLevel blue
execute store result storage developer:data Games[-1].Blue.stored_netherite int 1 run scoreboard players get stored_netherite blue
execute store result storage developer:data Games[-1].Blue.crystal_count int 1 run scoreboard players get crystal_count blue
execute store result storage developer:data Games[-1].Blue.additional_shop int 1 run scoreboard players get additional_shop blue
execute store result storage developer:data Games[-1].Blue.pigmanSlaves int 1 run scoreboard players get pigmanSlaves blue
execute store result storage developer:data Games[-1].Blue.harvest_level int 1 run scoreboard players get @p[team=blue] harvest_level


execute as @a[team=!] run function game:end/store_scores_player

