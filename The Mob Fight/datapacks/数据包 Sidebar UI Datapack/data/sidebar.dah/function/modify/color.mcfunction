#macro: $(color)

data modify storage sidebar.dah:data data.test set value ""
$data modify storage sidebar.dah:data data.test set value "$(color)"

function sidebar.dah:private/process/capitalize
function sidebar.dah:private/process/parse_input