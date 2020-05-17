#setting slot count
execute store result storage inv_drop:main hold.Slot byte 1 run scoreboard players remove slot= inv_drop.main 9

#writing into output array
data modify storage inv_drop:main out.inventory append from storage inv_drop:main hold