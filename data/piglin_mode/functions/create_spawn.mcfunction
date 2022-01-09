# Creates a marker tagged "spawn" in the nether, at the first air space above Y=60.
# This isn't a very good algorithm but our options here are very limited.
# We do this with a tail-recursive loop that moves the marker one block upwards until air is found.

# Delete any already existing spawn markers, in case this function is re-run later.
say Setting spawn point
kill @e[tag=spawn]

# Create a marker tagged spawn at Y=60
execute in the_nether run summon marker 0 60 0 {Tags:["spawn"]}

# Walk it upwards until you hit air
function piglin_mode:seek_spawn_location
