
# ルールが弾使うモードなら弾を減らす
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 run clear @s chain_command_block{ChuzData:{ItemID:Shotshell}} 1

# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# リセット
    scoreboard players reset @s Chuz.Temporary

# 加算
    scoreboard players set $AmmoAdd Chuz.Temporary 1
    scoreboard players operation $Ammo Chuz.Temporary += $AmmoAdd Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item set from entity @s SelectedItem
    data modify storage chuz:context Item.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    loot replace block 100001 0 100000 container.0 loot craftsman_arms:set_ammo
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# スコアリセット
    scoreboard players reset @s S.Rif_Reload