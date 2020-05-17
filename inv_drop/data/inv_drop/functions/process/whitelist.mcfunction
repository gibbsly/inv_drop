scoreboard players set val= inv_drop.main 1

#listed items
#example: execute if data storage inv_drop:main hold{id:"minecraft:stone"} run scoreboard players set val= inv_drop.main 0

#marking to drop if a listed item isn't found
execute if score val= inv_drop.main matches 1 run scoreboard players set out= inv_drop.main 0
scoreboard players reset val= inv_drop.main