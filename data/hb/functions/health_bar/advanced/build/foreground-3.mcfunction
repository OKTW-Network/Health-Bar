data modify storage hb:temp health_bar_foreground_body_part set value {}
execute if score #health_bar_block_foreground_3 +HealthBar matches 1.. run data modify storage hb:temp health_bar_foreground_body_part.1 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 2.. run data modify storage hb:temp health_bar_foreground_body_part.2 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 3.. run data modify storage hb:temp health_bar_foreground_body_part.3 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 4.. run data modify storage hb:temp health_bar_foreground_body_part.4 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 5.. run data modify storage hb:temp health_bar_foreground_body_part.5 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 6.. run data modify storage hb:temp health_bar_foreground_body_part.6 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 7.. run data modify storage hb:temp health_bar_foreground_body_part.7 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 8.. run data modify storage hb:temp health_bar_foreground_body_part.8 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 9.. run data modify storage hb:temp health_bar_foreground_body_part.9 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
execute if score #health_bar_block_foreground_3 +HealthBar matches 10.. run data modify storage hb:temp health_bar_foreground_body_part.10 set value '[{"text":"3","font":"hb:customname/health_bar-foreground"},{"text":"3","font":"hb:customname/health_bar-fix_gap"}]'
data modify storage hb:temp health_bar_foreground_body set value '[{"nbt":"health_bar_foreground_body_part.1","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.2","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.3","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.4","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.5","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.6","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.7","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.8","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.9","storage":"hb:temp","interpret":true},{"nbt":"health_bar_foreground_body_part.10","storage":"hb:temp","interpret":true}]'