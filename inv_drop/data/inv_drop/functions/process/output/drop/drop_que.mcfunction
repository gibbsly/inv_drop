#writing que item into shulker box
data modify block 29999999 0 14544 Items set from storage inv_drop:main out.drop.que[0]
data remove storage inv_drop:main out.drop.que[0]

#dropping items
loot spawn ~ ~ ~ mine 29999999 0 14544 minecraft:debug_stick

#loop
execute if data storage inv_drop:main out.drop.que[0] run function inv_drop:process/output/drop/drop_que