Datapack that creates a "piglin-mode" game, with gameplay changes:

- Core / challenge changes
  - [x] Spawn in the Nether
    - Note this feature has some drawbacks:
      - You actually spawn in the overworld then get teleported. There's a small load area far above (0,0).
        You could in theory fly up there once you have an Elytra.
      - We try to find a reasonable spawn location in the nether but this is very primitive.
	    Currently it is just the first air block above Y=60 at (0,0). You may end up in mid-air, or on the wrong side of the bedrock ceiling.
    - [ ] Spawn in a premade starter structure
  - [x] Being in the overworld causes you to take damage
    - This takes the form of nausea + wither status effects. **I highly recommend turning down the nausea effects in accessibility settings**.
    - Because the damage is so slow, it can be effectively combatted by lots of food or other healing
  - [x] Dying in the overworld spawns a zombie piglin
- Quality of life improvements
  - [x] Magma cubes drop slimeballs in addition to magma cream
  - [x] Redstone added to various loot tables
    - [x] Can be given by piglins when bartering
    - [x] Can be found in nether fortresses
    - [x] Can be found in bastions
  - [x] Blackstone can be used in place of cobble (and polished blackstone for stone) in more recipes
    - [x] Dispenser
    - [x] Dropper
    - [x] Lever
    - [x] Observer
    - [x] Piston
    - [x] Comparator (polished blackstone)
    - [x] Repeater (polished blackstone)
    - [x] Stonecutter (polished blackstone)
	- [x] Detector Rail (blackstone pressure plate)
- Just for fun
  - [x] New Advancements
