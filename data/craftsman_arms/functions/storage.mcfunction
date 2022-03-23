
# 取得
    function craftsman_arms:get_data/

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
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{ItemID:Craftsman_Gunblade} in overworld run function craftsman_arms:item/gunblade/switch

# グレートソード
    # メイン
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Greatsword} run function craftsman_arms:item/great_sword/main

# 共通処理
    # アイテムが変わったら状態リセット
        execute if entity @s[scores={Chuz.ItemCheck=1}] run function craftsman_arms:item/score_reset

    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Inventory[{Slot:-106b}].tag.ChuzData{NoOffhand:true} run function craftsman_arms:item/no_offhand