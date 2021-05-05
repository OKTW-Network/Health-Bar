scoreboard players operation #player_tag_qouta_mob +HealthBar = #hb$health_bar_tag_limit_mob Config
scoreboard players operation #player_tag_qouta_mob_hostile +HealthBar = #hb$health_bar_tag_limit_mob_hostile Config
scoreboard players operation #player_tag_qouta_mob_neutral +HealthBar = #hb$health_bar_tag_limit_mob_neutral Config
scoreboard players operation #player_tag_qouta_mob_passive +HealthBar = #hb$health_bar_tag_limit_mob_passive Config

execute if score #player_tag_qouta_mob +HealthBar matches 1.. if score #player_tag_qouta_mob_hostile +HealthBar matches 1.. run function hb:health_bar/tag/hostile
execute if score #player_tag_qouta_mob +HealthBar matches 1.. if score #player_tag_qouta_mob_neutral +HealthBar matches 1.. run function hb:health_bar/tag/neutral
execute if score #player_tag_qouta_mob +HealthBar matches 1.. if score #player_tag_qouta_mob_passive +HealthBar matches 1.. run function hb:health_bar/tag/passive

tag @e[tag=hb.markHealthBar,tag=!hb.setHealthBar] add hb.setHealthBar
tag @e[tag=hb.markHealthBar] remove hb.markHealthBar
