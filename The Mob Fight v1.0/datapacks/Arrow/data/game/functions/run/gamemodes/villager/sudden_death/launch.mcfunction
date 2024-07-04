execute as @a at @s run playsound minecraft:entity.ender_dragon.ambient master @s ~ ~ ~ 1.1 0.6
function game:run/gamemodes/villager/sound/start
title @a times 10 105 16
title @a title {"translate":"mode.sudden_death","color": "red"}
title @a subtitle {"translate":"mode.sudden_death.villager","color": "yellow"}
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "2","color": "gold"}]}]
tellraw @a [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"mode.sudden_death","color": "red"},"! ","\n",{"translate":"chatbox.sudden_death.villager","color": "yellow"}]
function game:run/netherite/gen_blue
function game:run/netherite/gen_blue
function game:run/netherite/gen_red
function game:run/netherite/gen_red

schedule function game:run/gamemodes/villager/sudden_death/spawn_super 6t

