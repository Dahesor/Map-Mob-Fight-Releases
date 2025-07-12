data modify storage run log.log append value {content:{text:"",extra:[{text:""}]}}
function game:shop/sell/__string_to_struct with storage run ThisRandom
data remove storage run log.log[-1].content.extra[0].italic
data remove storage run log.log[-1].content.extra[0][].italic
data remove storage run log.log[-1].content.extra[0].bold
function lobby:spectator/sidebar/log/signed