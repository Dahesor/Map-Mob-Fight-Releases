execute as @a[scores={UI=1..}] run function ui:self
execute if entity @e[type=item,nbt={Item:{tag:{ui:{}}}}] run function ui:foolproof/dropped
execute if entity @e[type=item,nbt={Item:{tag:{UISpaceHolder:1b}}}] run function ui:foolproof/dropped
execute if entity @e[type=item,nbt={Item:{tag:{shell:{dynamic:{}}}}}] run function ui:foolproof/dropped
execute as @a[tag=returning] run function ui:null