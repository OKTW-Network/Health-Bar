execute unless score @s UUID0 matches -2147483648..2147483647 store result score @s UUID0 run data get entity @s UUID[0]
execute unless score @s UUID1 matches -2147483648..2147483647 store result score @s UUID1 run data get entity @s UUID[1]
execute unless score @s UUID2 matches -2147483648..2147483647 store result score @s UUID2 run data get entity @s UUID[2]
execute unless score @s UUID3 matches -2147483648..2147483647 store result score @s UUID3 run data get entity @s UUID[3]

tag @s add hb.thisSourceEntity

execute as @e[tag=hb.health_bar] if score @s hb.HBUUID0 = @e[tag=hb.thisSourceEntity,limit=1] UUID0 if score @s hb.HBUUID1 = @e[tag=hb.thisSourceEntity,limit=1] UUID1 if score @s hb.HBUUID2 = @e[tag=hb.thisSourceEntity,limit=1] UUID2 if score @s hb.HBUUID3 = @e[tag=hb.thisSourceEntity,limit=1] UUID3 run tag @s add hb.thisHealthBar

tag @s remove hb.thisSourceEntity

execute if score #hb$health_bar_type Config matches 0 at @s run function hb:health_bar/basic/main
execute if score #hb$health_bar_type Config matches 1 at @s run function hb:health_bar/advanced/main

tag @e[tag=hb.thisHealthBar] remove hb.thisHealthBar

tag @s remove hb.updateHealthBar
