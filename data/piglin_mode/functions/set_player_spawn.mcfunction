# Runs on every tick, for now. Might want to make it more periodic later if that causes problems.
execute at @e[tag=spawn] run spawnpoint @a ~ ~ ~

# If we've never seen a particular player before, this is their initial spawn.
# They will have arrived at the world spawn. Teleport them to the correct spawn location.
# We know who we've seen using the "playerSeen" player tag.
execute as @a[tag=!playerSeen] at @e[tag=spawn] run teleport ~ ~ ~
# And then tag them as seen. Note we still depend on @e[tag=spawn] so that we only tag as done
# if spawn existed and the above command actually ran.
execute at @e[tag=spawn] run tag @a[tag=!playerSeen] add playerSeen
