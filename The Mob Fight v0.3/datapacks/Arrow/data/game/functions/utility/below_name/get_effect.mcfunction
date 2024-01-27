$data modify storage run belowName.effect set value '$(0)$(1)$(2)$(3)$(4)$(5)$(6)'

$execute if entity @s[name="Dahesor"] run tellraw @a {"text":$(0)$(1)$(2)$(3)$(4)$(5)$(6),"font":"icon"}