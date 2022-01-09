# We use a scoreboard to track deaths to trigger things that happen on death
scoreboard objectives add deaths deathCount

# Permanently load the nether spawn chunk
execute in the_nether run forceload add 0 0

# Set up the nether spawn point if it doesn't exist, once nether spawn is loaded.
function piglin_mode:ensure_spawn
