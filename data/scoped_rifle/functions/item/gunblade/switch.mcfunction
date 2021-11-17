
# 音
    execute at @s run playsound minecraft:entity.witch.throw player @a ~ ~ ~ 1 0.7
    execute at @s run playsound minecraft:block.iron_door.open player @a ~ ~ ~ 1 1.5
    execute at @s run playsound minecraft:block.iron_trapdoor.close player @a ~ ~ ~ 1 1

# 現状はオフハンドに入れると戻ってくる
    data remove storage chuz:context Item
    data modify storage chuz:context Item.Mainhand merge from entity @s SelectedItem
    data modify storage chuz:context Item.Offhand merge from entity @s Inventory[{Slot:-106b}]
    data modify storage chuz:context Item.Offhand merge value {Slot:0b}
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Offhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick
    item replace entity @s weapon.offhand with air
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    execute if data storage chuz:context Item.Mainhand run loot replace entity @s weapon.offhand 1 mine 100001 0 100000 debug_stick

# 取得しなおす
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem 
    data modify storage chuz:context Item.Offhand set from entity @s Inventory[{Slot:-106b}]

# 銃から剣に
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Ranged} run loot replace entity @s weapon.mainhand loot scoped_rifle:item/gunblade/melee

# 剣から銃に
    execute if data storage chuz:context Item.Offhand.tag.ChuzData{ItemID:Craftsman_Gunblade,ItemMode:Melee} run loot replace entity @s weapon.mainhand loot scoped_rifle:item/gunblade/ranged

tellraw @a [{"text":"storage: "},{"storage":"chuz:context","nbt":"Item.Offhand.tag.ChuzData"}]

# 置き換え
    data modify storage chuz:context Item.Mainhand set from entity @s SelectedItem
    data modify storage chuz:context Item.Mainhand.tag.display.Name set from block 100001 0 100000 Items[0].tag.display.Name
    execute store result storage chuz:context Item.Mainhand.tag.ChuzData.Ammo int 1 run scoreboard players get $Ammo Chuz.Temporary
    loot replace block 100001 0 100000 container.0 loot scoped_rifle:set_ammo
    data modify block 100001 0 100000 Items set value []
    data modify block 100001 0 100000 Items append from storage chuz:context Item.Mainhand
    loot replace entity @s weapon.mainhand 1 mine 100001 0 100000 debug_stick

# 装填数更新
    function scoped_rifle:item/replaceitem
    tag @s add S.Rif_Hold

# リセット
    tag @s remove S.Rif_Steping