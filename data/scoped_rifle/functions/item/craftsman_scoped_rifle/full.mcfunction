# サウンド
    execute at @s run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.note_block.xylophone player @a ~ ~ ~ 1 1
    execute at @s run execute anchored eyes run particle smoke ^ ^ ^1 0 0 0 0.05 5

# 戻ってくる
    data remove storage chuz:context Item
    data modify storage chuz:context Item.Mainhand merge from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick