
# 今持ってるよ
    tag @s add S.Rif_Hold
    tag @s add S.Rif_Charge

# アイテム情報更新
    execute if data storage chuz:context Item.Mainhand.tag.ChuzData.Ammo in overworld run function scoped_rifle:item/replaceitem

# ハンターステップ
    execute if score @s S.Rif_RClick matches 0.. if entity @s[predicate=!scoped_rifle:sneak,nbt={OnGround:1b}] run function scoped_rifle:item/gunblade/hunter_step

# ガンパリング
    execute if score @s S.Rif_RClick matches 0.. if entity @s[predicate=scoped_rifle:sneak] run function scoped_rifle:item/gunblade/parry/succes

# スニーク解除で戻す
    execute unless entity @s[predicate=scoped_rifle:sneak] run loot replace entity @s weapon.mainhand loot scoped_rifle:item/gunblade/melee