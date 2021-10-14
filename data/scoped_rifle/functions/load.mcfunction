# スコアボード作成
    scoreboard objectives add S.Rif_Sneak minecraft.custom:sneak_time
    scoreboard objectives add S.Rif_Shot minecraft.used:crossbow
    scoreboard objectives add S.Rif_RClick minecraft.used:warped_fungus_on_a_stick
    scoreboard objectives add S.Rif_Pump dummy
    scoreboard objectives add S.Rif_Charge dummy
    scoreboard objectives add S.Rif_Reload dummy
    scoreboard objectives add S.Rif_Ready dummy
    scoreboard objectives add S.Rif_Rule1 dummy

# チャンク読み込み
    forceload add 100000 100000

# シュル箱
    execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
    execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock

# 時たま使い回されるスコアボード
    scoreboard objectives add Chuz.Temporary dummy
    scoreboard objectives add Col_Check_Temp dummy
    scoreboard objectives add Chuz.Calc dummy

# 飛び道具の弾速
    scoreboard objectives add Chuz.Range dummy
    scoreboard objectives add Chuz.Speed dummy
    scoreboard objectives add Chuz.Recursion dummy

# ダメージ受けたときのやつ
    scoreboard objectives add Chuz.HitCheck dummy

# スコアIDだ
    scoreboard objectives add Chuz_Pl.IDCore dummy
    scoreboard objectives add Chuz_Pl.ID dummy
    scoreboard objectives add Chuz_En.ID dummy
    scoreboard objectives add Chuz_Mo.ID dummy

# 時たま使い回されるチーム
    team add No_Collision
    team modify No_Collision collisionRule never

# ルールが存在してなかったら定義
    execute unless score $Chuz.Setting S.Rif_Rule1 = $Chuz.Setting S.Rif_Rule1 run scoreboard players set $Chuz.Setting S.Rif_Rule1 1

# やぶ台のレシピ
