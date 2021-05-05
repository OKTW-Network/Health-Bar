execute store success score #player_tag_success +HealthBar run tag @e[type=#minecraft:passive,nbt=!{Invulnerable:1b},nbt=!{Invisible:1b},tag=!hb.markHealthBar,distance=..8,sort=nearest,limit=1] add hb.markHealthBar
execute if score #player_tag_success +HealthBar matches 1.. run scoreboard players remove #player_tag_qouta_mob +HealthBar 1
execute if score #player_tag_success +HealthBar matches 1.. run scoreboard players remove #player_tag_qouta_mob_passive +HealthBar 1

execute if score #player_tag_success +HealthBar matches 1.. if score #player_tag_qouta_mob +HealthBar matches 1.. if score #player_tag_qouta_mob_passive +HealthBar matches 1.. run function hb:health_bar/tag/passive
