execute at @s run playsound entity.experience_orb.pickup master @s
tellraw @s [">>>",{"translate":"op.chat.unlocked","color": "yellow"}]
scoreboard players set AdminJoinMidOn Options 1
execute if score lobby_state Data matches 3 run function lobby:lobby_spinner/lapis