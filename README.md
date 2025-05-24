
# Nayru62's Super Pokédex ported to Newbox 
A small project that ports Nayru62's Super Pokédex to Newbox by Rangi42, FredrIQ, vulcandth and adds a few features

- Porting done by https://github.com/TimKun55
- Recommended RGBDS version: v 0.7
- Recommended Emulator: BGB
- Note: This project does not use pokecrystal16

# Project's Base - Newbox: Complete overhaul of Bill's PC

https://github.com/fellowship-of-the-roms/pokecrystal/tree/newbox

# Nayru62 Pokédex
https://github.com/Nayru62/pokecrystal/tree/8.0_Nayrus_Pokedex

*Bundled:* [Idain's](https://github.com/Idain) [Custom Dex Colors](https://github.com/pret/pokecrystal/wiki/Customizable-Pok%C3%A9dex-Color) and [Toggle Shiny Palettes](https://github.com/pret/pokecrystal/wiki/Option-to-show-shiny-colors-in-Pok%C3%A9dex)

- [Unique Mon Icons](https://github.com/pret/pokecrystal/wiki/Add-a-new-party-menu-icon)
- [Expanded Tilesets to 255](https://github.com/pret/pokecrystal/wiki/Expand-tilesets-from-192-to-255-tiles), 
- Naryu's Gen3 Type/Status/Cat Tiles. Pokedex portion must be implemented. Other parts, optional.

FEATURES:  Base stats and info, Move Info, Detailed area info, Evolution chart, and sprite page showing animated sprites (reflects shiny toggle too).

Move Information: Lvl-Up Moves -> Field Moves (plus lvl learned and/or TM/HM/Move Tutor) -> Egg Moves -> TMs.

AREA Pages: Currently supports Johto/Kanto Walking/grass/surfing encounters plus their swarms. Fishing Rods information is also included. Right now, all it will show you is the relevant Fishing Group Name. To check your local Fishing Group, check the PokeGear.

POKEGEAR: Now shows the detailed name of map you're currently in (based on Map Group & Map Number) and it also reads the map's attribute to see it's fishing group, if it has one.



# What's added?

![image](https://github.com/user-attachments/assets/5f77dc6a-40d1-4ac9-865a-60a1f3900950)
![evo_page_demo](https://github.com/user-attachments/assets/faaffcf4-2982-4478-bf4e-18730813f387)
![image](https://github.com/user-attachments/assets/30b6d655-d8ce-44a3-b493-1d3ab82a2e65)
![image](https://github.com/user-attachments/assets/926066af-ad87-42b9-974d-17ecf67f0f5d)
![image](https://github.com/user-attachments/assets/22c40dde-b07f-4324-8584-5af9ab323165)
![image](https://github.com/user-attachments/assets/2a9d32df-eaec-4177-b295-25de420ace24)

**Quality of life features**
- 60 fps overworld and smooth fading added
- Dynamic overworld sprites and palettes added
- Evening added from 5:00pm - 8:00pm and it uses 60% of day encounters and 40% of the night encounters
- View free space on each compile (pokecrystal.gbc or pokecrystal_debug.gbc)
- Instant Text added, removed Slow and Medium text speeds
- Removed the artificial save delay
- Select + B to resets the game
- Press Up and Start on Suicune running screen to bring up the option to delete save file
- Run anywhere (hold  B to walk), Surf faster by default (Hold B to slow surf)
- Day and Time added to Start Menu
- Added a Medicine, Fruit, Battle and Loot Pack pockets
- Added item sorting to Pack in and out of battles
- "Trivial Calls" replaced "Menu Account" in Options menu
- Display coloured Pokémon pictures in over world
- Poké-Centre fast heal added
- Show shiny icon in battle for own Pokémon too
- Gender correct battle/trade link rooms
- Show quantity already in Pack at Marts, (TMs don't show quantity) by DanielOlivaw
- Show move names for TMs and HMs when receiving or buying
- Allow using a field move if the Pokémon can learn it (This includes HMs, so it is possible to get stuck in Cianwood city)
- Correct grammar for plural trainers like Twins
- Prompt to automatically reuse Repel when one runs out
- Improved the trainer rematch system
- Name Rater can change Traded Pokémon names
- Eggs can be released
- Eggs hatch at Level 1
- All stats can be maxed with vitamins regardless if trained or not
- Added a new radio channel
- Voltorb flip added to Game Corners by froggestspirit
- Move Deleter and Name Rater's menu loops to party after use
- Press A or B to stop the Bicycle in any downhill environments that forces bike usage
- Don't play bike music in National Park or surf music in the Lake of Rage
- Headbutting trees, smashing rocks and fishing has a chance to yield items
- Allow fishing while surfing
- New Fly Points added for Route 20/Blaine’s Gym, Route 32, Route 26, Tohjo Falls/Route 27, Battle Tower, National Park, Mt. Moon and Rock Tunnel


**Graphics**
- New surfing sprite added
- Cooltrainer Male's overworld sprite eye fix by Major Agnostic
- Animate tiles even when textboxes are open
- Shiny Pokémon's eggs have a blue palette


**Gym Badges**
- Show the tops of leaders heads on the trainer card
- Added a third trainer card page for Kanto badges
- Coloured the Johto badges in the Trainer Card
- Coloured the Kanto badges in the Trainer Card
- Updated Rainbow Badge's palettes
- Janine gives the Marsh Badge and Sabrina gives Soul Badge now


**Battle Related**
- Battle HUD Update by Idain
- Can swap held items in Pokémon Party Menu
- Physical/Special split added
- Updated AI
- More information added to Move Menu
- Added "MOVES" menu option in battle
- Use unique colours for each thrown Pokéball
- Gain experience from catching Pokémon
- Removed the 25% failure chance for AI status moves
- Enemy trainers have maximum happiness for a powerful Return
- Quick Claw activation text added
- Prevent Steel‐types from being poisoned by Twineedle
- Prevent burning fire types and freezing ice types by Tri-Attack
- Player Loss text added (Only used in the Cherrygrove and Burn Tower battles)
- Short beeping noise for low HP
- Lose money proportional to badges and lead level Pokémon
- Replaced stat experience with EVs & Can max out EVs on all stats (can be modified by tutorial in pokecrsytal's wiki to work like main series)
- Don't gain experience at level 100 or Level Cap (if implemented)
Still get EVs
- Show an icon for the current weather
- Removed the gym badges boosts
- Survive poisoning with 1 HP
- Added a new battle transition for Rocket members
- Gold Berry recovers 1/4 of max HP by PurnPum
- Party Menu status tiles added
- Player and Enemy's Pokémon status doesn't cover its level
- Display TOX instead of PSN if badly poisoned by PurnPum
- Backups and restores held items after battle (Only used for RED so far) by AtmaBuster


**Tutorials Used**
- Improved the event initialization system
- Reduced the command queue system to just stone tables
- Improved the outdoor sprite system
- Allow more trainer parties with individual DVs, EVs, and nicknames + allowing trainer data to be stored in multiple banks
- Increase Pokémon sprite animation size
- Expand tilesets from 192 to 255 tiles


**Graphics**
- Bag graphic by TimKun55
- Uncensored beauty, fisherman, sage, medium and swimmer_f's trainer sprites

**Debug ROM**
- Assemble Debug ROM with `make d`
- Shorten intro
- Interact with Player's Room radio to get a team of Pokémon, set many flags and warp to Cherrygrove City
- Press A on Egg Stat Screen to hatch any egg after a singe step

- Access "DEBUG ROOM" on Continue screen after creating a Save File
- Note: Ensure "BATTLE SKIP" in "DEBUG ROOM" is set to "DO" and not SKIP" as to not OHKO all enemies (if needed)


Credit to https://github.com/SoupPotato/Sourcrystal for the following:

Hold `A` to walk through walls

Hold `A` to ignore trainers

Hold `A` to disable wild encounters


# Last commit taken from pokecrystal:
https://github.com/pret/pokecrystal/commit/c1da20e2f12f95c935500151d15f455e7e7eb213

# Credits

Rangi42 - https://github.com/Rangi42

FredrIQ - https://github.com/FredrIQ

vulcandth - https://github.com/vulcandth

Nayru62 - https://github.com/Nayru62

Idain - https://github.com/Idain

TimKun55 - https://github.com/TimKun55

Grate Oracle Lewot - https://github.com/Grate-Oracle-Lewot

GetKosiorekt - https://github.com/GetKosiorekt

Major Agnostic - https://github.com/MajorAgnostic

Nick Jam - https://github.com/Nick-PC

Sour Apple - https://github.com/SoupPotato/Sourcrystal

rodmcosta - https://github.com/rodmcosta

4rdorin - https://github.com/4rdorin

cRz-Shadows - https://github.com/cRz-Shadows

AtmaBuster - https://github.com/AtmaBuster/crystalleaf

DanielOlivaw - https://github.com/DanielOlivaw/pokecrystal16

PurnPum - https://github.com/PurnPum/Sketchy-Crystal

froggestspirit - https://github.com/froggestspirit/crystalcomplete

FrenchOrange - https://github.com/FrenchOrange

PiaCRT - https://github.com/PiaCarrot

UberMedic7 - https://github.com/UberMedic7

NekrobaDA - https://github.com/NekrobaDA

xaerochill - https://github.com/xaerochill

oatspear - https://github.com/oatspear

And everyone that worked on the pokecrsytal disassembly and wrote their tutorials in the wiki which literally carried me + everyone on the pret discord server~!

Special Thanks to the following:


GetKosiorekt, Grate Oracle Lewot, TimKun55, Nayru62, 4rdorin, Major Agnostic, Idain, Sour Apple, lifeofmauri, FrenchOrange, PiaCRT, mauvemon, PerreteCartago, rodmcosta, cRz-Shadows, ElfinHilon10, dannye, FootFingers, Ferropexola, weepingwitch, SonicRay100, Handheld Hero, 8bitzeta, Pferomon, UberMedic7, NekrobaDA, xaerochill and oatspear


**Vanilla Bugfixes**
- All Bugs and Glitches fixed from here: https://pret.github.io/pokecrystal/bugs_and_glitches.html#some-trainer-npcs-have-inconsistent-overworld-sprites minus "Slot machine payout sound effects cut each other off" since I prefer the vanilla game's sound effect.
- All Design Flaws fixed from here: https://pret.github.io/pokecrystal/design_flaws.html#identical-sine-wave-code-and-data-is-repeated-five-times minus "Identical sine wave code and data is repeated five times"

**Known Bugs**
- Very few large custom sprites when viewed in the Pokédex, via Pics to see their animation, get slightly glitchy. 


# Pokémon Crystal [![Build Status][ci-badge]][ci]

This is a disassembly of Pokémon Crystal:
https://github.com/pret/pokecrystal

To set up the repository, see [INSTALL.md](INSTALL.md).

## See also

- [**FAQ**](FAQ.md)
- [**Documentation**][docs]
- [**Wiki**][wiki] (includes [tutorials][tutorials])
- [**Symbols**][symbols]

You can find us on [Discord (pret, #pokecrystal)](https://discord.gg/d5dubZ3).

For other pret projects, see [pret.github.io](https://pret.github.io/).

[docs]: https://pret.github.io/pokecrystal/
[wiki]: https://github.com/pret/pokecrystal/wiki
[tutorials]: https://github.com/pret/pokecrystal/wiki/Tutorials
[symbols]: https://github.com/pret/pokecrystal/tree/symbols
[ci]: https://github.com/pret/pokecrystal/actions
[ci-badge]: https://github.com/pret/pokecrystal/actions/workflows/main.yml/badge.svg
