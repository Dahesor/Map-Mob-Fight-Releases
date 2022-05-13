execute if entity @s[nbt={SelectedItem:{tag:{isBlockMaker:1b}}}] run function developer:find_block
execute if entity @s[nbt={SelectedItem:{tag:{isTNTMaker:1b}}}] run function developer:tnt
execute if entity @s[nbt={SelectedItem:{tag:{isDirtMaker:1b}}}] at @s run function developer:dirt