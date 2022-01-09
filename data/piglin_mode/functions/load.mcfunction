# We use a scoreboard to track deaths to trigger things that happen on death
scoreboard objectives add deaths deathCount

# Permanently load the nether spawn chunk
execute in the_nether run forceload add 0 0

# Set up the nether spawn point if it doesn't exist
execute unless entity @e[tag=spawn] run function piglin_mode:create_spawn
