scoreboard objectives add inv_drop.main dummy
scoreboard players set mode= inv_drop.main 0

forceload add 29999999 14544
setblock 29999999 0 14544 minecraft:shulker_box

function inv_drop:reset_scores
function inv_drop:reset_storage
