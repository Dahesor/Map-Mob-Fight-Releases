setblock 4 57 95 air{}
setblock 4 57 95 oak_wall_sign[facing=west]{front_text:{messages:['{"translate":"切换游戏模式","color": "green","clickEvent": {"action": "run_command","value": "/function lobby:gamemode_change"}}','""','""','[{"text":"[","color": "gray"},{"keybind":"key.use"},"]"]']}}

execute if score GameMode Data matches 0 run data modify block 4 57 95 front_text.messages[1] set value '{"translate": "gamemode.0","color": "green"}'
execute if score GameMode Data matches 1 run data modify block 4 57 95 front_text.messages[1] set value '{"translate": "gamemode.1","color": "red"}'
execute if score GameMode Data matches 2 run data modify block 4 57 95 front_text.messages[1] set value '{"translate": "gamemode.2","color": "aqua"}'