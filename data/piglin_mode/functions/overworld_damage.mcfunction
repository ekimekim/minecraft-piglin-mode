# Every 2sec, adds nausea and wither effects to all players in the overworld.
# Nausea is set to 5 seconds as it has no effect if duration <= 3.

# We need to only do this every 2s at most because wither applies damage *upon the time remaining
# reaching 2s*, so if you eg. applied every sec and started at 3s, you'd take 1 damage/sec
# instead of 1 damage / 2sec. And if you start at 1s you never do damage at all.
# We apply every 2s but start at 3s, otherwise there's a brief window where it runs out
# which looks weird. Note this means upon entering the overworld that your first damage will occur
# between 1s and 3s later. This is acceptable.

# This function is triggered by load, and then re-schedules itself for 2s later after every call.

# @a[distance=0..] selects all players in the current dimension.

execute in overworld run effect give @a[distance=0..] nausea 5
execute in overworld run effect give @a[distance=0..] wither 3

# Call ourselves again
schedule function piglin_mode:overworld_damage 2s
