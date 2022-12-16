scoreboard players add @a[scores={gifNUM=0..}] gifNUM 1
execute as @a if score @s gifNUM >= maxGifTime Data run scoreboard players set @s gifNUM 0