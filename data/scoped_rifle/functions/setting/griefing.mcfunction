#トグル
scoreboard players add $S.Rif_Setting2 Chuz.Rule 1
execute if score $S.Rif_Setting2 Chuz.Rule matches 2.. run scoreboard players set $S.Rif_Setting2 Chuz.Rule 0
function scoped_rifle:settings
playsound minecraft:ui.button.click player @s ~ ~ ~ 1 2