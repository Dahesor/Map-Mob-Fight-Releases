data modify storage run log.log append value {content:{text:"",extra:[{text:""}]}}
data modify storage run log.log[-1].content.extra[0] set from storage run PayName
function lobby:spectator/sidebar/log/signed