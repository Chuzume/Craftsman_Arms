
# 今持ってるよ
    tag @s add S.Rif_Hold
    tag @s add S.Rif_Charge

# 残弾0でエイムしてない場合はリロードをする
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:6} run scoreboard players add @s S.Rif_Ready 1

# 弾がマックスになったらおしまい
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:6} run scoreboard players reset @s S.Rif_Ready 

# リロード準備が整ったら弾を込めだす
    execute if score @s S.Rif_Ready matches 40.. run function scoped_rifle:item/gunblade/reload/reloading

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem

# ハンターステップ
    execute if score @s S.Rif_RClick matches 0.. if entity @s[predicate=!scoped_rifle:sneak,nbt={OnGround:1b}] run function scoped_rifle:item/gunblade/hunter_firestep
    #execute if score @s S.Rif_RClick matches 0.. anchored eyes positioned ~ ~-0.5 ~ positioned ^ ^ ^0.5 run function scoped_rifle:item/gunblade/explode
    # 着地でリセット
        #execute if entity @s[tag=S.Rif_NoStep,nbt={OnGround:1b}] unless entity @s[scores={S.Rif_RClick=1..}] run function scoped_rifle:item/gunblade/landing

# ガンパリング
    #execute if score @s S.Rif_RClick matches 0.. if entity @s[predicate=scoped_rifle:sneak] run function scoped_rifle:item/gunblade/parry/succes

# スニークで構える