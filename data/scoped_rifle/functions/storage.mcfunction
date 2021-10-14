
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# スコープライフル
    # 手放すとリロードリセット
        execute unless data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run scoreboard players reset @s S.Rif_Charge
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function scoped_rifle:item/craftsman_scoped_rifle/main

# ショットガン
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun} run function scoped_rifle:item/craftsman_shotgun/main
    # リロード
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Shotgun_Reload} run function scoped_rifle:item/craftsman_shotgun/reload/main

# 共通処理
# 手放すとリロードリセット
        execute unless entity @s[tag=S.Rif_Hold] run function scoped_rifle:item/craftsman_scoped_rifle/score_reset
        tag @s[tag=S.Rif_Hold] remove S.Rif_Hold
    # オフハンドに入れると戻ってくる
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{NoOffhand:true} run function scoped_rifle:item/no_offhand

# 削除
    data remove storage chuz:context Item