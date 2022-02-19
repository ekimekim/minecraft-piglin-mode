# Runs in the context of (as @s, at @s) a player who just died in the overworld.
# In particular the player selected by @a[distance=0..,scores={deaths=1..},limit=1].

# Create the zombie piglin at player's location
summon zombified_piglin ^ ^ ^ {PersistenceRequired:1,CustomName:'"Zombified Player"'}

# Write the player's name to a sign far above the world. This forces "component resolution" of the written value,
# which causes the sign's name to be the fully rendered value. Entity names don't do this.
# We use a redundant "as" here to ensure we only run if a player is found, but note that @s doesn't work
# inside the sign's context.
# In theory a player could observe this sign but it exists for less than a tick and is 50 blocks above
# the buildable area. We can't go below bedrock as setblock doesn't work there.
setblock 0 319 0 oak_sign{Text1:'["Zombified ", {"selector":"@a[distance=0..,scores={deaths=1..},limit=1]"}]'}

# Copy the sign's text to the piglin's name. Identify the piglin by name and position.
data modify entity @e[name="Zombified Player",distance=0..,sort=nearest,limit=1] CustomName set from block 0 319 0 Text1

# Delete the sign
setblock 0 319 0 air

# Award the player's achievement
advancement grant @s only piglin_mode:zombified
