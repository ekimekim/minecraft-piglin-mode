# Every tick, teleport any players at overworld spawn to nether spawn
execute as @a[x=0,y=315,z=0,distance=..2] at @e[tag=spawn] run teleport ~ ~ ~
