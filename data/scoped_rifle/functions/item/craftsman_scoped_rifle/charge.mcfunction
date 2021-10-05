    
# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# リセット
    scoreboard players reset @s Chuz.Temporary

# メインハンドのアイテムのデータを取る
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem

# 個数を残弾にする
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem.Count

# 置き換え
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    loot replace block 100001 0 100000 container.0 loot scoped_rifle:set_ammo
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    data modify storage chuz:context Item.Mainhand.tag.ChargedProjectiles[{}] set from storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem
    data modify storage chuz:context Item.Mainhand.tag.Charged set value 1b
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# サウンド
    execute at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute at @s run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 2
    execute at @s anchored eyes run particle crit ^ ^ ^1 0 0 0 0.5 5

# これ以上チャージできない
    scoreboard players set @s S.Rif_Charge 16