# Executes every tick, searching for newly-dead players in the overworld
# For each player found, spawns a zombie pigman.

# I'd love to be able to make this only happen if the cause of death was withering,
# but there doesn't seem to be any way to do that.

# We want to process each player in order, so we restrict everything below to one player,
# then tail-recurse if any other players are still found.

# For a player that died in the overworld, process them then delete their death flag
execute in overworld as @a[distance=0..,scores={deaths=1..},limit=1] at @s run function piglin_mode:died_in_overworld
scoreboard players set @a[distance=0..,scores={deaths=1..},limit=1] deaths 0

# If any overworld players remain, loop
execute in overworld if entity @a[distance=0..,scores={deaths=1..}] run function piglin_mode:check_player_death

# Everything following will be executed once per level we end up recursing, but it's idempotent.

# For each player that died somewhere non-overworld, drop a porkchop
execute as @a[scores={deaths=1..}] at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:porkchop",Count:1}}
# Then clear all deaths
scoreboard players set @a deaths 0
