
# 何も持ってないとき
    execute unless data storage chuz:context Item.Mainhand.tag.ChuzData.ItemID run data modify storage chuz:context Item.Mainhand.tag.ChuzData.ItemID set value {}

# 直前のアイテムチェックするやつ
    execute store success score @s Chuz.ItemCheck run data modify storage oh_my_dat: _[-4][-4][-4][-4][-4][-4][-4][-4].OldMainhand.tag.ChuzData.ItemID set from storage chuz:context Item.Mainhand.tag.ChuzData.ItemID

# 結果
    #execute if score @s Chuz.ItemCheck matches 0 run say 0
    #execute if score @s Chuz.ItemCheck matches 1 run say 1