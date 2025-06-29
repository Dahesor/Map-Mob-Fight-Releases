execute unless data storage run log.log[0] run return fail
execute store result score $recorded calculator run data get storage run log.log[0].time
execute if score $recorded calculator <= LogTime Data run function lobby:spectator/sidebar/log/append