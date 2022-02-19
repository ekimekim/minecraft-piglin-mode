# Every tick, teleport any players at overworld spawn to nether spawn.
# But first, give them some boots.
execute as @a[x=0,y=315,z=0,distance=..2] run item replace entity @s armor.feet with minecraft:golden_boots{Damage:90}
execute as @a[x=0,y=315,z=0,distance=..2] at @e[tag=spawn] run teleport ~ ~ ~
