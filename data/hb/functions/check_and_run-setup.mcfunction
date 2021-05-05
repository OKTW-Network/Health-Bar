scoreboard objectives add Meta dummy

function hb:check-dependency

execute if score #hb$dependency_missing Meta matches 0 if score #math$setup Meta matches 1 if score #cu$setup Meta matches 1 unless score #hb$setup Meta matches 1 run function hb:setup
