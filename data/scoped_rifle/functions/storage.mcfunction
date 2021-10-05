
# 取得
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# ポーションランチャー オフハンドに持つ操作で装填
    # メインハンドに入ってる時のメイン処理
        execute if data storage chuz:context Item.Mainhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function scoped_rifle:item/craftsman_scoped_rifle/main
    # オフハンドに入れると装填する
        execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Craftsman_Scoped_Rifle} run function scoped_rifle:item/craftsman_scoped_rifle/main

# 削除
    data remove storage chuz:context Item

# リセット
    #scoreboard players reset @s S.Rif_Checker