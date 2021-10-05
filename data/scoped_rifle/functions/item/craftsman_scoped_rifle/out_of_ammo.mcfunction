
# 置き換え
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data remove storage chuz:context Item.Mainhand.tag.ChuzData.LoadedItem
    data modify storage chuz:context Item.Mainhand.tag.Charged set value 0b
    data modify storage chuz:context Item.Mainhand.tag.ChuzData.Ammo set value -1
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from storage chuz:context Item.Mainhand.tag.ChuzData.RawName
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# 音
    execute at @s run playsound minecraft:block.piston.contract player @a ~ ~ ~ 2 1.5
    execute at @s run playsound minecraft:item.crossbow.loading_end player @s ~ ~ ~ 2 1