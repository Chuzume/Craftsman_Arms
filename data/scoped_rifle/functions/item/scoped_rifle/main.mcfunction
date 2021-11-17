
# 今持ってるよ
    tag @s add S.Rif_Hold
    tag @s add S.Rif_Charge

# スニークでチャージ
    scoreboard players add @s[scores={S.Rif_Sneak=0..}] S.Rif_Charge 1 

# チャージ
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={S.Rif_Charge=5}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={S.Rif_Charge=10}] run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=13}] run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 2 1.5
    execute if entity @s[scores={S.Rif_Charge=30}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={S.Rif_Charge=30}] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.5
    
# 離して発砲
    execute unless score @s[scores={S.Rif_Charge=13..29}] S.Rif_Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/scoped_rifle/fire/charged

# シャープシュート
    execute unless score @s[scores={S.Rif_Charge=30..}] S.Rif_Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/scoped_rifle/fire/sharpshoot

# 残弾0なら失敗
   execute unless score @s[scores={S.Rif_Charge=13..}] S.Rif_Sneak matches 0.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/scoped_rifle/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless score @s[tag=!Chuz.UsingSpyglass] S.Rif_Sneak matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:4} run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:4} run scoreboard players reset @s S.Rif_Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 30.. run function scoped_rifle:item/scoped_rifle/reloading

# チャージ値リセット
    execute unless score @s S.Rif_Sneak matches 1.. run scoreboard players reset @s S.Rif_Charge

# スコープまたはスニークでリロードを中断
    execute if predicate scoped_rifle:sneak run function scoped_rifle:item/scoped_rifle/score_reset
    execute if entity @s[tag=Chuz.UsingSpyglass] run function scoped_rifle:item/scoped_rifle/score_reset

# ズームタグリセット
    tag @s[tag=Chuz.UsingSpyglass] remove Chuz.UsingSpyglass

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem