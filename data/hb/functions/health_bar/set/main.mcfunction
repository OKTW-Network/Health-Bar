execute unless score @s UUID0 matches -2147483648..2147483647 store result score @s UUID0 run data get entity @s UUID[0]
execute unless score @s UUID1 matches -2147483648..2147483647 store result score @s UUID1 run data get entity @s UUID[1]
execute unless score @s UUID2 matches -2147483648..2147483647 store result score @s UUID2 run data get entity @s UUID[2]
execute unless score @s UUID3 matches -2147483648..2147483647 store result score @s UUID3 run data get entity @s UUID[3]

tag @s add hb.thisSourceEntity

execute as @e[tag=hb.health_bar] if score @s hb.HBUUID0 = @e[tag=hb.thisSourceEntity,limit=1] UUID0 if score @s hb.HBUUID1 = @e[tag=hb.thisSourceEntity,limit=1] UUID1 if score @s hb.HBUUID2 = @e[tag=hb.thisSourceEntity,limit=1] UUID2 if score @s hb.HBUUID3 = @e[tag=hb.thisSourceEntity,limit=1] UUID3 run tag @s add hb.thisHealthBar

tag @s remove hb.thisSourceEntity

execute unless entity @e[tag=hb.thisHealthBar] run function hb:health_bar/set/get-position

execute at @s run summon minecraft:area_effect_cloud ~ ~ ~ {Particle:"block air",Radius:0f,Duration:0,WaitTime:2147483647,Tags:["hb.health_bar_anchor"]}
execute store result entity @e[tag=hb.health_bar_anchor,limit=1] Pos[1] double 0.1 run scoreboard players get @s hb.HBPosX1
execute store result entity @e[tag=hb.health_bar_anchor,limit=1] Pos[1] double 0.1 run scoreboard players get @s hb.HBPosZ1
scoreboard players operation #health_bar_anchor_posY +HealthBar = @s hb.HBPosY1
execute unless score @s hitboxY matches -2147483648..2147483647 run function cu:library/hitbox/main
scoreboard players operation #health_bar_anchor_posY +HealthBar += @s hitboxY
execute unless data entity @s CustomName run scoreboard players operation #health_bar_anchor_posY +HealthBar += #hb$health_bar_offset_normal Config
execute if data entity @s CustomName run scoreboard players operation #health_bar_anchor_posY +HealthBar += #hb$health_bar_offset_custom_name Config
execute store result entity @e[tag=hb.health_bar_anchor,limit=1] Pos[1] double 0.1 run scoreboard players get #health_bar_anchor_posY +HealthBar

execute if entity @e[tag=hb.thisHealthBar] run function hb:health_bar/set/update-position

execute as @e[tag=hb.thisHealthBar] run function hb:health_bar/set/renew
execute unless entity @e[tag=hb.thisHealthBar] run function hb:health_bar/set/summon

kill @e[tag=hb.health_bar_anchor]

tag @e[tag=hb.thisHealthBar] remove hb.thisHealthBar

tag @s add hb.showingHealthBar
tag @s remove hb.setHealthBar
