#setting slot count
execute unless score slot= inv_drop.main matches -106 store result storage inv_drop:main hold.Slot byte 1 run scoreboard players remove slot= inv_drop.main 99
execute if score slot= inv_drop.main matches -106 run data modify storage inv_drop:main hold.Slot set value 0b

#writing into output array
data modify storage inv_drop:main out.armor append from storage inv_drop:main hold