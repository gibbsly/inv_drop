#setting slot count
execute store result storage inv_drop:main hold.Slot byte 1 run data get storage inv_drop:main out.drop.current

#writing into array
data modify storage inv_drop:main out.drop.current append from storage inv_drop:main hold

#creating new array if current hits maximum allowed space
execute if data storage inv_drop:main out.drop.current[26] run function inv_drop:process/output/drop/write_to_que