#writing first value in input array into hold value for processing
data modify storage inv_drop:main hold set from storage inv_drop:main in[0]
data remove storage inv_drop:main in[0]

#getting slot value
execute store result score slot= inv_drop.main run data get storage inv_drop:main hold.Slot

#setting output location (1;hotbar, 2;inventory, 3;armor)
execute unless score mode= inv_drop.main matches 0 if score slot= inv_drop.main matches 0..8 run scoreboard players set out= inv_drop.main 1
execute unless score mode= inv_drop.main matches 0 if score slot= inv_drop.main matches 9..35 run scoreboard players set out= inv_drop.main 2
execute unless score mode= inv_drop.main matches 0 unless score slot= inv_drop.main matches 0..35 run scoreboard players set out= inv_drop.main 3

#mode based drop conditions (0;all, 1;whitelist, 2;blacklist)
execute if score mode= inv_drop.main matches 0 run scoreboard players set out= inv_drop.main 0
execute if score mode= inv_drop.main matches 1 run function inv_drop:process/whitelist
execute if score mode= inv_drop.main matches 2 run function inv_drop:process/blacklist

#writing to outputs
execute if score out= inv_drop.main matches 0 run function inv_drop:process/output/drop
execute if score out= inv_drop.main matches 1 run function inv_drop:process/output/hotbar
execute if score out= inv_drop.main matches 2 run function inv_drop:process/output/inventory
execute if score out= inv_drop.main matches 3 run function inv_drop:process/output/armor

#loop
execute if data storage inv_drop:main in[0] run function inv_drop:process/loop