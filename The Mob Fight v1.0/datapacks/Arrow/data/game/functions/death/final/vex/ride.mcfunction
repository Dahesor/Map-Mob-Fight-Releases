summon vex ~ ~1.2 ~ {Invulnerable:1b,Tags:["temp.vex","final_camera"],active_effects:[{id:"minecraft:invisibility",amplifier:0b,duration:999999,show_particles:0b,ambient:0b,show_icon:0b}]}
gamemode spectator @s
spectate @e[limit=1,type=vex,tag=temp.vex] @s
tag @e[tag=temp.vex,type=vex] remove temp.vex