execute store result score @s hb.HBHealthN run data get entity @s Health 1000000
execute store result score @s hb.HBHealthMaxN run attribute @s generic.max_health get 1000000

execute unless score @s hb.HBHealthN = @s hb.HBHealthL run tag @s add hb.updateHealthBar
execute unless score @s hb.HBHealthMaxN = @s hb.HBHealthMaxL run tag @s add hb.updateHealthBar

scoreboard players operation @s hb.HBHealthL = @s hb.HBHealthN
scoreboard players operation @s hb.HBHealthMaxL = @s hb.HBHealthMaxN

execute if entity @s[tag=hb.updateHealthBar] run function hb:health_bar/update/main
