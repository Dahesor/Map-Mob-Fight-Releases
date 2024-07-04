execute if block ~ ~ ~ #map:stoneland/break_blocks run summon marker ~ ~ ~ {Tags:["repair"]}
execute if block ~ ~ ~ #map:stoneland/clear_block run setblock ~ ~ ~ air replace
execute if block ~ ~ ~ snow_block if predicate map:stoneland/can_snow_break run fill ~ ~-3 ~ ~ ~3 ~ air replace snow_block