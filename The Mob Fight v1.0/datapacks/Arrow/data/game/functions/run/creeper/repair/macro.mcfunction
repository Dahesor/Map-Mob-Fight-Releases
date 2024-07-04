#$(x) $(y) $(z)

$execute unless data storage run repair[{x:$(x),y:$(y),z:$(z)}] run return fail
function game:run/creeper/repair/success
$data remove storage run repair[{x:$(x),y:$(y),z:$(z)}]