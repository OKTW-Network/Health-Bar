execute at @e[tag=hb.health_bar_anchor] run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"block air",CustomNameVisible:1b,Radius:0f,Duration:0,WaitTime:2,Tags:["hb.health_bar","init"]}
scoreboard players operation @e[tag=hb.health_bar,tag=init] hb.HBUUID0 = @s UUID0
scoreboard players operation @e[tag=hb.health_bar,tag=init] hb.HBUUID1 = @s UUID1
scoreboard players operation @e[tag=hb.health_bar,tag=init] hb.HBUUID2 = @s UUID2
scoreboard players operation @e[tag=hb.health_bar,tag=init] hb.HBUUID3 = @s UUID3
execute if score #hb$health_bar_type Config matches 0 run function hb:health_bar/basic/build/main
execute if score #hb$health_bar_type Config matches 1 run function hb:health_bar/advanced/build/main
data modify entity @e[tag=hb.health_bar,tag=init,limit=1] CustomName set from storage hb:temp health_bar
tag @e[tag=hb.health_bar,tag=init] remove init
