

execute if entity @s[tag=!tnt_auto] run summon creeper ~ ~ ~ {active_effects:[{id:"dolphins_grace",amplifier:0b,duration:1000,show_particles:0b,show_icon:0b}],Fuse:0s,ignited:1b,CustomName:'"TNT"'}
execute if entity @s[tag=tnt_auto] run summon creeper ~ ~ ~ {active_effects:[{id:"dolphins_grace",amplifier:0b,duration:1000,show_particles:0b,show_icon:0b}],Fuse:0s,ignited:1b,CustomName:'{"translate": "自动TNT","color": "gold"}'}
kill @s