

# スニークでチャージ
    scoreboard players add @s[predicate=scoped_rifle:sneak] S.Rif_Charge 1 

# 弾切れ時
    #execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} in overworld run function scoped_rifle:item/potion_launcher/out_of_ammo

# チャージ
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=13}] run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 2 1.5


# 離して発砲
    execute if score @s[predicate=!scoped_rifle:sneak] S.Rif_Charge matches 13.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/craftsman_scoped_rifle/fire/charged

# 残弾0なら失敗
    execute if score @s[predicate=!scoped_rifle:sneak] S.Rif_Charge matches 13.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/craftsman_scoped_rifle/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute if entity @s[tag=!Chuz.UsingSpyglass,predicate=!scoped_rifle:sneak] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:4} run function scoped_rifle:item/craftsman_scoped_rifle/reloading

# チャージ値リセット
    execute unless predicate scoped_rifle:sneak run scoreboard players reset @s S.Rif_Charge

# スコープまたはスニークでリロードを中断
    execute if predicate scoped_rifle:sneak run scoreboard players reset @s S.Rif_Reload
    execute if entity @s[tag=Chuz.UsingSpyglass] run scoreboard players reset @s S.Rif_Reload

# ズームタグリセット
    tag @s[tag=Chuz.UsingSpyglass] remove Chuz.UsingSpyglass

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem