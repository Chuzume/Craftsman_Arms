# タイトル
    tellraw @s {"text":"\n\n[Settings]"}

# 弾薬が必要かどうか
    execute if score $$S.Rif_Setting1 Chuz.Rule matches 0 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ いいえ ]","color":"dark_red"}]
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ はい ]","color":"green"}]

# 地形を壊すかどうか
    execute if score $S.Rif_Setting1 Chuz.Rule matches 0 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ いいえ ]","color":"dark_red"}]
    execute if score $S.Rif_Setting1 Chuz.Rule matches 1 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ はい ]","color":"green"}]

# 空行
    tellraw @s {"text":"\n\n\n\n"}