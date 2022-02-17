# We use a scoreboard to track deaths to trigger things that happen on death
scoreboard objectives add deaths deathCount

# Set up the world spawn
# It needs to be within already-loaded area or else it won't work properly
execute positioned 0 315 0 run function piglin_mode:create_world_spawn

# Permanently load the nether spawn chunk
execute in the_nether run forceload add 0 0

# Set up the nether spawn point, once the chunk is loaded
function piglin_mode:wait_set_spawn
