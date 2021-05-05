scoreboard players set #hb$dependency_missing Meta 0

execute store success score #hb$dependency-math Meta run function math:version
execute store success score #hb$dependency-cu Meta run function cu:version

execute if score #hb$dependency-math Meta matches 0 run scoreboard players set #hb$dependency_missing Meta 1
execute if score #hb$dependency-cu Meta matches 0 run scoreboard players set #hb$dependency_missing Meta 1

execute store success score #hb$broadcast_type Meta if entity @a

execute if score #hb$broadcast_type Meta matches 0 if score #hb$dependency_missing Meta matches 1 run say [Health Bar] Missing dependency:
execute if score #hb$broadcast_type Meta matches 0 if score #hb$dependency-math Meta matches 0 run say  - Math Integraion (https://github.com/OKTW-Network/Math-integration)
execute if score #hb$broadcast_type Meta matches 0 if score #hb$dependency-cu Meta matches 0 run say  - Creative Utilities (https://github.com/OKTW-Network/Creative-utilities)

execute if score #hb$broadcast_type Meta matches 1 if score #hb$dependency_missing Meta matches 1 run tellraw @a ["",{"text":"[Health Bar]: ","color":"yellow","bold":true},{"text":"Missing dependency: ","color":"red"}]
execute if score #hb$broadcast_type Meta matches 1 if score #hb$dependency-math Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Math Integraion","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Math-integration"}}]
execute if score #hb$broadcast_type Meta matches 1 if score #hb$dependency-cu Meta matches 0 run tellraw @a ["",{"text":" - "},{"text":"Creative Utilities","color":"gold","underlined":true,"hoverEvent":{"action":"show_text","value":"Click here for the Github page"},"clickEvent":{"action":"open_url","value":"https://github.com/OKTW-Network/Creative-utilities"}}]
