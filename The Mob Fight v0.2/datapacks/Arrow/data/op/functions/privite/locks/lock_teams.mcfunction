execute at @s run playsound entity.experience_orb.pickup master @s
tellraw @s [">>>",{"translate":"op.chat.lock_on","color": "yellow"}]
scoreboard players set AdminTeamsOn Options 1