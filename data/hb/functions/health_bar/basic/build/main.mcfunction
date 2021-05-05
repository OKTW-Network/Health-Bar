execute store result score #entity_health_percent +HealthBar run data get entity @s Health 1
execute store result score #entity_health_value_max +HealthBar store result score #health_bar_size +HealthBar run attribute @s generic.max_health get 1
execute if score #entity_health_percent +HealthBar > #entity_health_value_max +HealthBar run scoreboard players operation #entity_health_percent +HealthBar = #entity_health_value_max +HealthBar
scoreboard players operation #entity_health_percent +HealthBar *= #100 num
scoreboard players operation #entity_health_percent +HealthBar /= #entity_health_value_max +HealthBar

execute if score #entity_health_value_max +HealthBar matches 2.. run scoreboard players operation #health_bar_size +HealthBar /= #2 num
execute if score #entity_health_value_max +HealthBar matches 0..1 run scoreboard players set #health_bar_size +HealthBar 1
execute if score #health_bar_size +HealthBar matches 31.. run scoreboard players set #health_bar_size +HealthBar 30

execute store result score #health_bar_background +HealthBar run scoreboard players operation #health_bar_value +HealthBar = #health_bar_size +HealthBar
scoreboard players operation #health_bar_value +HealthBar *= #entity_health_percent +HealthBar
scoreboard players operation #health_bar_value +HealthBar /= #100 num
scoreboard players operation #health_bar_background +HealthBar -= #health_bar_value +HealthBar

function hb:health_bar/basic/build/background

function hb:health_bar/basic/build/value

data modify storage cu:string toStatic.input set value '[{"nbt":"health_bar_basic_border_color","storage":"hb:config","interpret":true},{"translate":".%s%s.","with":[{"nbt":"health_bar_value","storage":"hb:temp","interpret":true},{"nbt":"health_bar_background","storage":"hb:temp","interpret":true}]}]'
function cu:string/convert_to-static
data modify storage hb:temp health_bar set from storage cu:string toStatic.result
