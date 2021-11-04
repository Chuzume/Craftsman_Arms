
# 今持ってるよ
    tag @s add S.Rif_Hold

# 発砲
    execute if entity @s[scores={S.Rif_Shot=0..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/fire/normal

# 残弾0なら失敗
    execute if entity @s[scores={S.Rif_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/shotgun/fire/out_of_ammo

# スコープまたはスニークでリロードを中断
    execute if predicate scoped_rifle:sneak run function scoped_rifle:item/scoped_rifle/score_reset
    execute if entity @s[tag=Chuz.UsingSpyglass] run function scoped_rifle:item/scoped_rifle/score_reset

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/reload/start

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem
