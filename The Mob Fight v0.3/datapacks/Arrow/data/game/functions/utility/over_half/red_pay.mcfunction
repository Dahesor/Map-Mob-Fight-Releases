data merge storage run {first_kill:1b}
title @a[team=red] times 0 35 12
title @a[team=red] title ""
title @a[team=red] subtitle {"translate":"subtitle.gained_netherite","with":[{"text": "1","color": "gold"}]}

tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"message.gained_netherite","with":[{"text": "1","color": "gold"}]}]
tellraw @a[team=red] [{"translate":"chat.head.game","color": "aqua"}," ",{"translate":"netherite.pay.us"}]
tellraw @a[team=blue] [{"translate":"chat.head.game","color": "red"}," ",{"translate":"netherite.pay.enemy"}]
function game:run/netherite/gen_red