# Every tick, adds nausea and wither effects to all players in the overworld.
# Nausea is set to 5 seconds as it has no effect if duration <= 3.
# @a[distance=0..] selects all players in the current dimension.
execute in overworld run effect give @a[distance=0..] nausea 5
execute in overworld run effect give @a[distance=0..] wither 2
