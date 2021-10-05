

# スニークでチャージ
    scoreboard players add @s[predicate=scoped_rifle:sneak] S.Rif_Charge 1 

# 弾切れ時
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} in overworld run function scoped_rifle:item/potion_launcher/out_of_ammo

# チャージ
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5

# 離して発砲
    #execute if score @s[predicate=!scoped_rifle:sneak] S.Rif_Charge matches 1..9 run function scoped_rifle:item/craftsman_scoped_rifle/fire/quick
    execute if score @s[predicate=!scoped_rifle:sneak] S.Rif_Charge matches 10.. run function scoped_rifle:item/craftsman_scoped_rifle/fire/charged

# チャージ値リセット
    execute unless predicate scoped_rifle:sneak run scoreboard players reset @s S.Rif_Charge

# ズームタグリセット
    tag @s[tag=Chuz.UsingSpyglass] remove Chuz.UsingSpyglass

    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem