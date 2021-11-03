
# 今持ってるよ
    tag @s add S.Rif_Hold

# 発砲
    execute if entity @s[scores={S.Rif_Shot=0..}] unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/shotgun/fire/normal

# ポンプアクション
#    scoreboard players remove @s[scores={S.Rif_Pump=0..}] S.Rif_Pump 1
#    execute if score @s S.Rif_Pump matches 10 run function scoped_rifle:item/shotgun/pump_sound
#    execute if score @s S.Rif_Pump matches ..0 run function scoped_rifle:item/shotgun/pump_finish

# 残弾0なら失敗
    execute if entity @s[scores={S.Rif_Shot=0..}] if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/shotgun/fire/out_of_ammo

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:2} run scoreboard players reset @s S.Rif_Ready 
    execute if score @s S.Rif_Pump matches 0.. run scoreboard players reset @s S.Rif_Ready
# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 30.. run function scoped_rifle:item/shotgun/reload/reloading

# スコープまたはスニークでリロードを中断
    execute if predicate scoped_rifle:sneak run function scoped_rifle:item/scoped_rifle/score_reset
    execute if entity @s[tag=Chuz.UsingSpyglass] run function scoped_rifle:item/scoped_rifle/score_reset

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/shotgun/reload/start

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem
