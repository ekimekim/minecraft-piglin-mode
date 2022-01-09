# Recursive loop that steps the spawn marker upwards by 1 block until it hits air
execute as @e[tag=spawn] at @s run teleport ~ ~1 ~

execute as @e[tag=spawn] at @s unless block ~ ~ ~ air run function piglin_mode:seek_spawn_location
