# Run on load and then again every tick until the nether spawn chunk is loaded.
# Calls create_spawn if the spawn marker does not already exist.

# Because the chunk won't be loaded at first, we need to check if it is.
# We do this by creating a marker there, then checking to see if we can detect it.
execute in the_nether run summon marker 0 60 0 {Tags:["spawnLoadChecker"]}

# If we can't, that means we aren't loaded. Try again in a while.
# We need to wait a while because there's a weird half-state where existing entities aren't loaded
# but we can detect things we create, so if we check every tick we re-define spawn when we shouldn't.
# This will create yet another spawnLoadChecker but that's fine as they'll all be deleted eventually.
execute unless entity @e[tag=spawnLoadChecker] run schedule function piglin_mode:ensure_spawn 10

# If we can, then delete all spawnLoadCheckers and run create_spawn if spawn doesn't exist
execute if entity @e[tag=spawnLoadChecker] unless entity @e[tag=spawn] run function piglin_mode:create_spawn
kill @e[tag=spawnLoadChecker]
