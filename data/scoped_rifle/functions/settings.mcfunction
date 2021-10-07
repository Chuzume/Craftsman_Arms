# タイトル
    tellraw @s {"text":"\n\n[Settings]"}
# 弾薬が必要かどうか
    execute if score $Chuz.Setting S.Rif_Rule1 matches 0 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ いいえ ]","color":"dark_red"}]
    execute if score $Chuz.Setting S.Rif_Rule1 matches 1 run tellraw @s ["",{"text":"リロードに弾薬が必要かどうか","clickEvent":{"action":"run_command","value":"/function scoped_rifle:setting/ammo_require"}},{"text":" [ はい ]","color":"green"}]
# 空行
    tellraw @s {"text":"\n\n\n\n"}