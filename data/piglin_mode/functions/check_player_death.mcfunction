# Executes every tick, searching for newly-dead players in the overworld
# For each player found, spawns a zombie pigman.

# I'd love to be able to make this only happen if the cause of death was withering,
# but there doesn't seem to be any way to do that.

# I'd also love to set the name to the player's name. That may be possible but difficult.

# "at ..." will execute command for each result, so this will work even for multiple players.
execute in overworld at @a[distance=0..,nbt={DeathTime:1}] run summon zombified_piglin ~ ~ ~ {PersistenceRequired:1}
execute in overworld at @a[nbt={DeathTime:1}] run say died
