data modify storage developer:run run set from storage developer:run MobArrow[0]
execute store result score #aa calculator run data get storage developer:run run.GameID
tellraw @s [{"text": "=============================\nShowing Mob Arrows From Game ","color": "green","bold": true},{"score":{"name": "#aa","objective": "calculator"},"color": "aqua"}]
function developer:data/get_mobarrow/loop
tellraw @s [{"text": " ← Previous","clickEvent": {"action": "run_command","value": "/function developer:data/get_mobarrow/previous"}},"      ",{"text": "Next → ","clickEvent": {"action": "run_command","value": "/function developer:data/get_mobarrow/next"}}]