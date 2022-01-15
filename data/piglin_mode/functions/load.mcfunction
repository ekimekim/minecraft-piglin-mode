# We use a scoreboard to track deaths to trigger things that happen on death
scoreboard objectives add deaths deathCount

# Set up the world spawn
execute positioned 585764 315 215702 run function piglin_mode:create_world_spawn

# Permanently load the nether spawn chunk
execute in the_nether run forceload add 0 0

# Set up the nether spawn point, once the chunk is loaded
function piglin_mode:wait_set_spawn
