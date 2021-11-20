
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# スコープライフル
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function craftsman_arms:item/scoped_rifle/main

# ショットガン
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run function craftsman_arms:item/shotgun/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun_Reload} run function craftsman_arms:item/shotgun/reload/main

# グレネードランチャー
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher} run function craftsman_arms:item/grenade_launcher/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Grenade_Launcher_Reload} run function craftsman_arms:item/grenade_launcher/reload/main

# ガンブレード
    # 銃モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Ranged} run function craftsman_arms:item/gunblade/ranged/main
    # 剣モード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Melee} run function craftsman_arms:item/gunblade/melee/main
    # オフハンドに入れると変形する
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Craftsman_Gunblade} in overworld run function craftsman_arms:item/gunblade/switch

# 共通処理
    # 手放すとリロードリセット
        execute unless entity @s[tag=S.Rif_Hold] run function craftsman_arms:item/scoped_rifle/score_reset
        tag @s[tag=S.Rif_Hold] remove S.Rif_Hold
    # 手放すとチャージリセット
        execute unless entity @s[tag=S.Rif_Charge] run scoreboard players reset @s S.Rif_Charge
        tag @s[tag=S.Rif_Charge] remove S.Rif_Charge
    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:true} run function craftsman_arms:item/no_offhand

# 削除
    data remove storage chuz:context Item