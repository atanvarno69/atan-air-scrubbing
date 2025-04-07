# Air Scrubbing

Adds air scrubbing to remove pollution and spores.

Technology is provided to unlock the air scrubber building and pollution filters to use with it. The air scrubber will consume 1 pollution filter and remove 40 pollution in 60 seconds. This produces a used pollution filter, which may be cleaned to recover all or most of the pollution filters and has a chance to return a filtered byproduct.

These recipes are provided:

* By player or in assembling machine: 2 s + 5 iron gear wheel + 3 electronic circuit + 2 steel plate + 2 efficiency module → 1 air scrubber
* By player or in assembling machine: 2 s + 2 coal [carbon with Space Age] + 1 steel plate + 1 plastic bar → 1 pollution filter
* In air scrubber: 60 s + 1 pollution filter - 40 pollution → 1 used pollution filter
* In chemical plant or biochamber: 20 s + 10 used pollution filter + 300 water → 8-10 pollution filter + 10% 0-3 sulfur

## Compatibility

Compatible with:

* [Quality](https://factorio.com/space-age/overview): See below.
* [Space Age](https://factorio.com/space-age/overview): See below.
* [Any Planet Start](https://mods.factorio.com/mod/any-planet-start): Alters the tech tree to make pollution/spore scrubbing available at an appropriate point based on your starting planet.
* [Ash](https://mods.factorio.com/mod/atan-ash): Pollution (but not spore) filter cleaning can return ash.

### Quality

Quality air scrubbers have improved health and pollution (and spore) reduction while operating:

| Air scrubber quality                                                                                            | Health | Pollution/spore reduction |
| --------------------------------------------------------------------------------------------------------------- | ------ | ------------------------- |
| ![normal](https://wiki.factorio.com/images/thumb/Quality_normal.png/15px-Quality_normal.png) Normal             | 350    | −40 /m                    |
| ![uncommon](https://wiki.factorio.com/images/thumb/Quality_uncommon.png/15px-Quality_uncommon.png) Uncommon     | 455    | −52 /m                    |
| ![rare](https://wiki.factorio.com/images/thumb/Quality_rare.png/15px-Quality_rare.png) Rare                     | 560    | −64 /m                    |
| ![epic](https://wiki.factorio.com/images/thumb/Quality_epic.png/15px-Quality_epic.png) Epic                     | 665    | −76 /m                    |
| ![legendary](https://wiki.factorio.com/images/thumb/Quality_legendary.png/15px-Quality_legendary.png) Legendary | 875    | −100 /m                   |

**NOTE:** In the Factoriopedia and in the mouse-over tooltips on items in your inventory, the game will show that crafting speed is affected by quality and pollution/spore reduction isn't. This is incorrect and due to limitations in the modding API forcing a janky quality implementation for air scrubbers. Actual built air scrubbers will show the correct properties.

There is no benefit from higher quality pollution or spore filters.

### Space Age

Adds seperate spore filters and spore scrubbing recipe for the air scrubber:

* By player or in assembling machine: 2 s + 2 carbon + 1 steel plate + 1 plastic bar → 1 spore filter
* In air scrubber: 60 s + 1 spore filter - 40 spores → 1 used spore filter
* In chemical plant or biochamber: 20 s + 10 used spore filter + 300 water → 8-10 spore filter + 10% 0-3 spoilage

The pollution and spore scrubbing recipes will be available on any planet with pressure (i.e. air) and the respective emissions type. By default this is Nauvis and Gleba, but availability is extended to any planet modded to use the relevant emission type in the `data.lua` stage.

## Credits

Scrubber graphics from [Factorio Buildings](https://www.figma.com/proto/y1IQG08ZG2jIeJ5sTyF4MP/Factorio-Buildings), released under the [CC BY license](https://creativecommons.org/licenses/by/4.0/).

Filter and used filter graphics from [Unused Renders](https://github.com/malcolmriley/unused-renders), released under the [Creative Commons Attribution 4.0 International license](https://creativecommons.org/licenses/by/4.0/).

Sounds from [Krastorio 2](https://mods.factorio.com/mod/Krastorio2), released under the [GNU Lesser General Public License version 3 license](https://opensource.org/license/lgpl-3.0).

### Localization

* French: [Xatrosss](https://mods.factorio.com/user/Xatrosss)
* Chinese: [Houraiji-Kyuusyou](https://github.com/Houraiji-Kyuusyou)
