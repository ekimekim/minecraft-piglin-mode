# Expects to be called with the world spawn location to set.
# It creates a small spawn area at the top of the map.

setworldspawn ~ ~ ~
gamerule spawnRadius 0
# A 1x2x1 space fully enclosed by bedrock, except above as otherwise you'd spawn on top
setblock ~ ~ ~ bedrock
setblock ~ ~1 ~ air
setblock ~1 ~1 ~ bedrock
setblock ~-1 ~1 ~ bedrock
setblock ~ ~1 ~1 bedrock
setblock ~ ~1 ~-1 bedrock
setblock ~ ~2 ~ air
setblock ~1 ~2 ~ bedrock
setblock ~-1 ~2 ~ bedrock
setblock ~ ~2 ~1 bedrock
setblock ~ ~2 ~-1 bedrock
