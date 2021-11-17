
# 対象スロットの残り使用回数取得
    execute store result score $Ammo Chuz.Temporary run data get storage chuz:context Item.Mainhand.tag.ChuzData.Ammo

# 減算
    execute store result score $AmmoUse Chuz.Temporary run data get entity @s SelectedItem.tag.ChuzData.AmmoUse
    scoreboard players operation $Ammo Chuz.Temporary -= $AmmoUse Chuz.Temporary

# 置き換え
    data modify storage chuz:context Item set from entity @s SelectedItem
    data modify storage chuz:context Item.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    loot replace block 100001 0 100000 container.0 loot scoped_rifle:set_ammo
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
