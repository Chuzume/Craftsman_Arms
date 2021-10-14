tag @s add S.Rif_ReloadSucces
title @s actionbar {"text":"| Succes |","color":"green"}
playsound minecraft:block.note_block.bell player @s ~ ~ ~ 2 2
execute anchored eyes run particle glow ^-0.5 ^ ^0.5 0 0 0 0.2 5
function scoped_rifle:item/craftsman_shotgun/reload/finish