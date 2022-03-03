tellraw @a ["",{"translate":"系统通知","color": "green","bold": true},{"text": "> ","color": "aqua"},{"nbt":"system","storage": "game:announcement","color": "yellow","interpret": true}]
execute as @a at @s run playsound entity.experience_orb.pickup master @s
data modify storage game:announcement system set value ''