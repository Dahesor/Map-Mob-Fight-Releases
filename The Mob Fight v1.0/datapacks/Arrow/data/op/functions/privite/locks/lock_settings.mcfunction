execute at @s run playsound entity.experience_orb.pickup master @s
tellraw @s [">>>",{"translate":"op.chat.lock_on","color": "yellow"}]
scoreboard players set AdminSettingsOn Options 1
execute if score lobby_state Data matches 1 run function lobby:lobby_spinner/diamond