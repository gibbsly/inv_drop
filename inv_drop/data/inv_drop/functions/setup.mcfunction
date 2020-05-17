scoreboard objectives add inv_drop.main dummy
scoreboard players set mode= inv_drop.main 0

setblock 29999999 0 14544 minecraft:shulker_box
forceload add 29999999 14544

function inv_drop:reset_scores
function inv_drop:reset_storage