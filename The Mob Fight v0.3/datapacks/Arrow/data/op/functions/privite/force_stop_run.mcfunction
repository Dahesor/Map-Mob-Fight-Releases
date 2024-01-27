#define storage developer:book

schedule function op:force_stop 110t
tellraw @a [{"translate":"chat.head.game","color": "red"}," ",{"translate":"op.stopping_game","underlined": true,"clickEvent": {"action": "run_command","value": "/function op:privite/force_stop_cancel"}}]