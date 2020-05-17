#initialization
function inv_drop:reset_storage 

#writing inventory into storage
data modify storage inv_drop:main in set from entity @s Inventory

#processing inventory recursively
function inv_drop:process/loop

#writing possessed data to inventory
function inv_drop:process/output/restore_inv

#dropping items if applicable
data modify storage inv_drop:main out.drop.que append from storage inv_drop:main out.drop.current
execute if data storage inv_drop:main out.drop.que[][] run function inv_drop:process/output/drop/drop_que