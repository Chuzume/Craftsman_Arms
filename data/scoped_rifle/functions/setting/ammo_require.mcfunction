#トグル
scoreboard players add $Chuz.Setting S.Rif_Rule1 1
execute if score $Chuz.Setting S.Rif_Rule1 matches 2.. run scoreboard players set $Chuz.Setting S.Rif_Rule1 0
function scoped_rifle:settings
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2