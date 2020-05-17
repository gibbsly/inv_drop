#moving current array into drop que array
data modify storage inv_drop:main out.drop.que append from storage inv_drop:main out.drop.current
data modify storage inv_drop:main out.drop.current set value []