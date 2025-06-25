data modify storage run macro_death set value {damage:0.0f,type:"",data:{}}
function game:run/crystal/chain/record_type

data modify storage run macro_death.data.HandItems set from entity @s HandItems
data modify storage run macro_death.data.ArmorItems set from entity @s ArmorItems

function game:player/specials/type_wipe/potentials with storage run macro_death