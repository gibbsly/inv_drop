#writing hotbar
data modify block 29999999 0 14544 Items set from storage inv_drop:main out.hotbar
loot replace entity @s hotbar.0 mine 29999999 0 14544 minecraft:debug_stick

#writing inventory
data modify block 29999999 0 14544 Items set from storage inv_drop:main out.inventory
loot replace entity @s inventory.0 mine 29999999 0 14544 minecraft:debug_stick

#writing armor
data modify block 29999999 0 14544 Items set from storage inv_drop:main out.armor
loot replace entity @s weapon.offhand mine 29999999 0 14544 minecraft:debug_stick