data modify storage run name.this set from entity @s Item.tag.SkullOwner.Name
execute store result score $length calculator run data get storage run name.this
execute if score $length calculator matches 19.. run data modify storage run name.this set string storage run name.this 0 18
kill