execute as @a at @s run playsound arrow:event.final.30s master @s
stopsound @a master arrow:event.final.30s
schedule function game:end/count_down/8s 12s
schedule function game:end/count_down/10s 10s