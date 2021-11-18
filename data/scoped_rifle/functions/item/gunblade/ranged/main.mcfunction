
# 今持ってるよ
    tag @s add S.Rif_Hold
    tag @s add S.Rif_Charge

# 発砲
    execute unless score @s[scores={S.Rif_Shot=0..}] S.Rif_Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/gunblade/ranged/fire/normal
    # 残弾0なら失敗
        execute if entity @s[scores={S.Rif_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/shotgun/fire/out_of_ammo

# フルバースト
    execute if entity @s[scores={S.Rif_Burst=1..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/gunblade/ranged/fire/normal
    # 弾切れ時
        execute if entity @s[scores={S.Rif_Burst=1..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/gunblade/ranged/fire/out_of_ammo

# チャージ
    execute if score @s S.Rif_Sneak matches 1.. run function scoped_rifle:item/gunblade/charge
    # チャージショット
        execute if score @s[scores={S.Rif_Shot=0..}] S.Rif_Charge matches 30.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/gunblade/ranged/fire/chargeshot
    # 弾切れ
        execute if score @s[scores={S.Rif_Shot=0..}] S.Rif_Charge matches 30.. if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/gunblade/ranged/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} unless score @s S.Rif_Sneak matches 0.. run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:8} run scoreboard players reset @s S.Rif_Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 30.. run function scoped_rifle:item/gunblade/reload/reloading

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem
    
# チャージ値リセット
    execute unless score @s S.Rif_Sneak matches 1.. run scoreboard players reset @s S.Rif_Charge