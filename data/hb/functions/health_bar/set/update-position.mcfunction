scoreboard players operation @s hb.HBPosX1 = @s hb.HBPosX2
scoreboard players operation @s hb.HBPosY1 = @s hb.HBPosY2
scoreboard players operation @s hb.HBPosZ1 = @s hb.HBPosZ2

execute store result score @s hb.HBPosX2 run data get entity @s Pos[0] 10
execute store result score @s hb.HBPosY2 run data get entity @s Pos[1] 10
execute store result score @s hb.HBPosZ2 run data get entity @s Pos[2] 10
