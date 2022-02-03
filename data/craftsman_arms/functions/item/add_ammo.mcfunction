#> craftsman_arms:item/add_ammo

# 対象スロットの残り使用回数取得
    execute store result score $AmmoReload Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# リセット
    scoreboard players reset @s Chuz.Temporary

# 加算
    scoreboard players set $AmmoAdd Chuz.Temporary 1
    scoreboard players operation $AmmoReload Chuz.Temporary += $AmmoAdd Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $AmmoReload Chuz.Temporary

# スコアリセット
    scoreboard players reset @s S.Rif_Reload

# 更新
    function craftsman_arms:item/replaceitem