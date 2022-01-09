# Run on load and then again every tick until the nether spawn chunk is loaded.

# Because the chunk won't be loaded at first, we need to check if it is.
# We do this by creating a marker there, then checking to see if we can detect it.
execute in the_nether run summon marker 0 60 0 {Tags:["spawnLoadChecker"]}

# If we can't, that means we aren't loaded. Try again next tick.
# This will create yet another spawnLoadChecker but that's fine as they'll all be deleted eventually.
execute unless entity @e[tag=spawnLoadChecker] run schedule function piglin_mode:wait_set_spawn 1

# If we can, then delete all spawnLoadCheckers and begin the set_spawn loop
execute if entity @e[tag=spawnLoadChecker] run function piglin_mode:set_spawn
kill @e[tag=spawnLoadChecker]
