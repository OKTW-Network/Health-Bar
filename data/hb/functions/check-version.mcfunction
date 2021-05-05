function hb:version

scoreboard players operation #new_x.*.*-* Version = #hb$version_x.*.*-* Meta
scoreboard players operation #new_*.x.*-* Version = #hb$version_*.x.*-* Meta
scoreboard players operation #new_*.*.x-* Version = #hb$version_*.*.x-* Meta
scoreboard players operation #new_*.*.*-x Version = #hb$version_*.*.*-x Meta
scoreboard players operation #currently_x.*.*-* Version = #hb$currently_version_x.*.*-* Meta
scoreboard players operation #currently_*.x.*-* Version = #hb$currently_version_*.x.*-* Meta
scoreboard players operation #currently_*.*.x-* Version = #hb$currently_version_*.*.x-* Meta
scoreboard players operation #currently_*.*.*-x Version = #hb$currently_version_*.*.*-x Meta
function cu:version/check

function cu:version/build-new
function cu:version/build-currently

execute if score #none Version matches 1 if score #hb$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #higher Version matches 1 if score #hb$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"green"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 1 if score #lower Version matches 1 if score #hb$print_version Config matches 1..2 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.currently","storage":"cu:resources","interpret":true},{"text":" -> ","color":"red"},{"nbt":"version.new","storage":"cu:resources","interpret":true}]
execute if score #change Version matches 0 if score #none Version matches 0 if score #hb$print_version Config matches 2 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Version: "},{"nbt":"version.new","storage":"cu:resources","interpret":true}]

data modify storage cu:string toStatic.input set value '{"nbt":"version.new","storage":"cu:resources","interpret":true}'
function cu:string/convert_to-static
data modify storage hb:version currently set from storage cu:string toStatic.result

scoreboard players operation #hb$version_currently_pre Meta = #pre Version

scoreboard players operation #hb$currently_version_x.*.*-* Meta = #hb$version_x.*.*-* Meta
scoreboard players operation #hb$currently_version_*.x.*-* Meta = #hb$version_*.x.*-* Meta
scoreboard players operation #hb$currently_version_*.*.x-* Meta = #hb$version_*.*.x-* Meta
scoreboard players operation #hb$currently_version_*.*.*-x Meta = #hb$version_*.*.*-x Meta
