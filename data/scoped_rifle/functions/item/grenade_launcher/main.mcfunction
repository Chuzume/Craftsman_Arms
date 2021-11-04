
# 今持ってるよ
    tag @s add S.Rif_Hold
    tag @s add S.Rif_Charge

# スニークでチャージ
    scoreboard players add @s[scores={S.Rif_Sneak=0..}] S.Rif_Charge 1 

# チャージ
    execute if entity @s[scores={S.Rif_Charge=20}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 1
    execute if entity @s[scores={S.Rif_Charge=20}] run playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=20}] anchored eyes run particle smoke ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 10
    execute if entity @s[scores={S.Rif_Charge=40}] run playsound minecraft:block.stone_button.click_on player @a ~ ~ ~ 1 2
    execute if entity @s[scores={S.Rif_Charge=40}] run playsound minecraft:block.note_block.bell player @a ~ ~ ~ 1 1.5
    execute if entity @s[scores={S.Rif_Charge=40}] anchored eyes run particle lava ^-0.25 ^-0.2 ^0.7 0 0 0 0.05 5


# チャージ値リセット
    execute unless score @s S.Rif_Sneak matches 1.. run scoreboard players reset @s S.Rif_Charge

# 発砲(チャージ0)
    execute if entity @s[scores={S.Rif_Shot=0..}] unless score @s S.Rif_Charge matches 0.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/fire/normal
    execute if entity @s[scores={S.Rif_Shot=0..}] if score @s S.Rif_Charge matches ..19 unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/fire/normal

# 発砲(チャージ1)
    execute if entity @s[scores={S.Rif_Shot=0..}] if score @s S.Rif_Charge matches 20..39 unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/fire/charge1

# 発砲(チャージ2)
    execute if entity @s[scores={S.Rif_Shot=0..}] if score @s S.Rif_Charge matches 40.. unless data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/fire/charge2

# スコープまたはスニークでリロードを中断
    execute if predicate scoped_rifle:sneak run function scoped_rifle:item/grenade_launcher/charge

# リロード
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData{Ammo:0} run function scoped_rifle:item/grenade_launcher/reload/start

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem
