execute as @a[gamemode=!spectator] at @s anchored eyes positioned ^ ^ ^1.5 run function hb:health_bar/tag/main

tag @e[tag=hb.showingHealthBar,tag=!hb.setHealthBar] remove hb.showingHealthBar

execute as @e[tag=hb.setHealthBar] run function hb:health_bar/set/main

execute as @e[tag=hb.showingHealthBar] run function hb:health_bar/update/check_and_run-main
