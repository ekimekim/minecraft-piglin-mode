# Executes every tick, searching for newly-dead players in the overworld
# For each player found, spawns a zombie pigman.

# I'd love to be able to make this only happen if the cause of death was withering,
# but there doesn't seem to be any way to do that.

# I'd also love to set the name to the player's name. That may be possible but difficult.

# We want to process each player in order, so we restrict everything below to one player,
# then tail-recurse if any other players are still found.

# Create the zombie piglin at player's location
execute in overworld as @a[distance=0..,scores={deaths=1..},limit=1] at @s run summon zombified_piglin ^ ^ ^ {PersistenceRequired:1,CustomName:'"zombified_player"'}
# Write the player's name to a sign far above the world. This forces "component resolution" of the written value,
# which causes the sign's name to be the fully rendered value. Entity names don't do this.
# We use a redundant "as" here to ensure we only run if a player is found, but note that @s doesn't work
# inside the sign's context.
# In theory a player could observe this sign but it exists for less than a tick and is 50 blocks above
# the buildable area. We can't go below bedrock as setblock doesn't work there.
execute in overworld as @a[distance=0..,scores={deaths=1..},limit=1] run setblock 0 319 0 oak_sign{Text1:'{"selector":"@a[distance=0..,scores={deaths=1..},limit=1]"}'}
# Copy the sign's text to the piglin's name. Identify the piglin by name and position.
execute in overworld as @a[distance=0..,scores={deaths=1..},limit=1] at @s run data modify entity @e[name="zombified_player",distance=0..,sort=nearest,limit=1] CustomName set from block 0 319 0 Text1
# Delete the sign
execute in overworld run setblock 0 319 0 air
# Clear the player's death flag
scoreboard players set @a[distance=0..,scores={deaths=1..},limit=1] deaths 0

# If any players remain, loop
#execute if 
