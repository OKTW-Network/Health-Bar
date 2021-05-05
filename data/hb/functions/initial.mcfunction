function #hb:scoreboard-register

function #hb:config

function hb:check-version

# function hb:tool/initial

execute as @a run function hb:initial-player

execute as @e[tag=hb.showingHealthBar] run function hb:health_bar/update/main

execute if score #hb$print_init Config matches 1 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Initialize complete!"}]
