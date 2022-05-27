schedule function lobby:lobby_spinner/diamond 1s
kill @e[type=item,predicate=map:in_blue]
kill @e[type=item,predicate=map:in_red]
kill @e[type=item,predicate=map:in_void]
kill @e[type=item,predicate=map:middle_area]
kill @e[type=armor_stand,tag=shop_notation]
bossbar set map:load visible false