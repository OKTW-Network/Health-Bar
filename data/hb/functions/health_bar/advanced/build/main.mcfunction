execute store result score #entity_health_percent +HealthBar run data get entity @s Health 1
execute store result score #entity_health_value_max +HealthBar store result score #health_bar_size +HealthBar run attribute @s generic.max_health get 1
scoreboard players set #entity_health_overflow +HealthBar 0
execute if score #entity_health_percent +HealthBar > #entity_health_value_max +HealthBar run scoreboard players set #entity_health_overflow +HealthBar 1
execute if score #entity_health_overflow +HealthBar matches 1 run scoreboard players operation #entity_health_percent +HealthBar = #entity_health_value_max +HealthBar
scoreboard players operation #entity_health_percent +HealthBar *= #100 num
scoreboard players operation #entity_health_percent +HealthBar /= #entity_health_value_max +HealthBar

execute if score #entity_health_value_max +HealthBar matches 20.. run scoreboard players operation #health_bar_size +HealthBar /= #5 num
execute if score #entity_health_value_max +HealthBar matches 10..19 run scoreboard players set #health_bar_size +HealthBar 3
execute if score #entity_health_value_max +HealthBar matches 0..9 run scoreboard players set #health_bar_size +HealthBar 2
execute if score #health_bar_size +HealthBar > #hb$health_bar_advanced_size_max Config run scoreboard players operation #health_bar_size +HealthBar = #hb$health_bar_advanced_size_max Config

scoreboard players set #health_bar_block_background_3 +HealthBar -2
execute store result score #health_bar_block_foreground_3 +HealthBar store result score #health_bar_start_value +HealthBar run scoreboard players operation #health_bar_block_background_3 +HealthBar += #health_bar_size +HealthBar
scoreboard players operation #health_bar_start_foreground +HealthBar = #health_bar_size +HealthBar

scoreboard players set #health_bar_value_max +HealthBar 5
execute store result score #health_bar_value +HealthBar run scoreboard players operation #health_bar_value_max +HealthBar *= #health_bar_size +HealthBar
scoreboard players operation #health_bar_value +HealthBar *= #entity_health_percent +HealthBar
execute store result score #health_bar_block_value_5 +HealthBar store result score #health_bar_block_value_last +HealthBar run scoreboard players operation #health_bar_value +HealthBar /= #100 num
scoreboard players operation #health_bar_block_value_last +HealthBar %= #5 num
execute store result score #health_bar_block_value_0 +HealthBar run scoreboard players operation #health_bar_block_value_5 +HealthBar /= #5 num
scoreboard players add #health_bar_block_value_0 +HealthBar 1
scoreboard players operation #health_bar_block_value_0 +HealthBar -= #health_bar_size +HealthBar

function hb:health_bar/advanced/build/background-3
execute unless score #hb$health_bar_advanced_background_color Config matches 1 run data modify storage hb:temp health_bar_background set value '[[{"text":"1","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"2","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_background_body","storage":"hb:temp","interpret":true},[{"text":"4","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"5","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]]'
execute if score #hb$health_bar_advanced_background_color Config matches 1 run data modify storage hb:temp health_bar_background set value '[{"nbt":"health_bar_advanced_background_color","storage":"hb:config","interpret":true},[[{"text":"1","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"2","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_background_body","storage":"hb:temp","interpret":true},[{"text":"4","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"5","font":"hb:customname/health_bar-background"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]]]'

function hb:health_bar/advanced/build/start_value-3
data modify storage hb:temp health_bar_start_value set value '[[{"text":"5","font":"hb:customname/health_bar-start_value"},{"text":"4","font":"hb:customname/health_bar-fix_gap"},{"text":"4","font":"hb:customname/health_bar-start_value"},{"text":"4","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_start_value_body","storage":"hb:temp","interpret":true},[{"text":"2","font":"hb:customname/health_bar-start_value"},{"text":"4","font":"hb:customname/health_bar-fix_gap"},{"text":"1","font":"hb:customname/health_bar-start_value"},{"text":"4","font":"hb:customname/health_bar-fix_gap"}],{"text":".","font":"hb:customname/health_bar-start_value"}]'

function hb:health_bar/advanced/build/value-5
function hb:health_bar/advanced/build/value-0
execute unless score #hb$health_bar_advanced_value_color Config matches 1 unless score #health_bar_value +HealthBar = #health_bar_value_max +HealthBar run data modify storage hb:temp health_bar_value set value '[{"nbt":"health_bar_value_head","storage":"hb:temp","interpret":true},[{"score":{"name":"#health_bar_block_value_last","objective":"+HealthBar"},"font":"hb:customname/health_bar-value"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_value_tail","storage":"hb:temp","interpret":true}]'
execute if score #hb$health_bar_advanced_value_color Config matches 1 unless score #health_bar_value +HealthBar = #health_bar_value_max +HealthBar run data modify storage hb:temp health_bar_value set value '[{"nbt":"health_bar_advanced_value_color","storage":"hb:config","interpret":true},[{"nbt":"health_bar_value_head","storage":"hb:temp","interpret":true},[{"score":{"name":"#health_bar_block_value_last","objective":"+HealthBar"},"font":"hb:customname/health_bar-value"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_value_tail","storage":"hb:temp","interpret":true}]]'
execute unless score #hb$health_bar_advanced_value_color Config matches 1 if score #health_bar_value +HealthBar = #health_bar_value_max +HealthBar run data modify storage hb:temp health_bar_value set value '[{"nbt":"health_bar_value_head","storage":"hb:temp","interpret":true},{"nbt":"health_bar_value_tail","storage":"hb:temp","interpret":true}]'
execute if score #hb$health_bar_advanced_value_color Config matches 1 if score #health_bar_value +HealthBar = #health_bar_value_max +HealthBar run data modify storage hb:temp health_bar_value set value '[{"nbt":"health_bar_advanced_value_color","storage":"hb:config","interpret":true},[{"nbt":"health_bar_value_head","storage":"hb:temp","interpret":true},{"nbt":"health_bar_value_tail","storage":"hb:temp","interpret":true}]]'

function hb:health_bar/advanced/build/start_foreground-0
data modify storage hb:temp health_bar_start_foreground set value '[{"nbt":"health_bar_start_foreground_body","storage":"hb:temp","interpret":true},{"text":".","font":"hb:customname/health_bar-start_foreground"}]'

function hb:health_bar/advanced/build/foreground-3
execute unless score #hb$health_bar_advanced_foreground_color Config matches 1 run data modify storage hb:temp health_bar_foreground set value '[[{"text":"1","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"2","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_foreground_body","storage":"hb:temp","interpret":true},[{"text":"4","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"5","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]]'
execute if score #hb$health_bar_advanced_foreground_color Config matches 1 run data modify storage hb:temp health_bar_foreground set value '[{"nbt":"health_bar_advanced_foreground_color","storage":"hb:config","interpret":true},[[{"text":"1","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"2","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}],{"nbt":"health_bar_foreground_body","storage":"hb:temp","interpret":true},[{"text":"4","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"},{"text":"5","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]]]'

data modify storage hb:temp health_bar_overflow set value '{"text":""}'
execute if score #entity_health_overflow +HealthBar matches 1.. run data modify storage hb:temp health_bar_overflow set value '[{"text":"8","font":"hb:customname/health_bar-fix_gap"},{"text":"+","font":"hb:customname/health_bar-overflow"}]'

data modify storage cu:string toStatic.input set value '[{"text":"","color":"reset"},{"nbt":"health_bar_background","storage":"hb:temp","interpret":true},{"nbt":"health_bar_start_value","storage":"hb:temp","interpret":true},{"nbt":"health_bar_value","storage":"hb:temp","interpret":true},{"nbt":"health_bar_start_foreground","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground","storage":"hb:temp","interpret":true},{"nbt":"health_bar_overflow","storage":"hb:temp","interpret":true}]'
function cu:string/convert_to-static
data modify storage hb:temp health_bar set from storage cu:string toStatic.result
