# inv_drop
a utility datapack to drop items out of a player's inventory

### Use
the drop functions are to be executed `as` and `at` a player

`/function inv_drop:drop/<mode>`

#### Modes
`all` drops all items out of the player's inventory

`whitelist` drops all items but what is listed in the [whitelist function](https://github.com/gibbsly/inv_drop/blob/master/inv_drop/data/inv_drop/functions/process/whitelist.mcfunction)

`blacklist` drops all items listed in the [blacklist function](https://github.com/gibbsly/inv_drop/blob/master/inv_drop/data/inv_drop/functions/process/blacklist.mcfunction)

### editing the whitelist/blacklist
to add an entry to the whitelist or blacklist you want to add the command 

`execute if data storage inv_drop:main hold{<nbt>} run scoreboard players set val= inv_drop.main <1/0>*`

\*1 for blacklist, 0 for whitelist
the nbt is dependent on the data you want to be listed, you can have `id`, `Slot`, `count`, misc tag data, ect...

### adding extra modes
you can add more whitelists, blacklists or whatever by adding more mode conditions in the [process/loop function](https://github.com/gibbsly/inv_drop/blob/master/inv_drop/data/inv_drop/functions/process/loop.mcfunction) (starting after line 13)
