# スコアボード作成
    scoreboard objectives add S.Rif_Charge dummy
    scoreboard objectives add S.Rif_Reload dummy

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    kill @e[type=area_effect_cloud,tag=Chuz.Vector0]
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
    
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

# コリジョンチェック関係
    scoreboard objectives add Col_Check_X dummy
    scoreboard objectives add Col_Check_Y dummy
    scoreboard objectives add Col_Check_Z dummy
    scoreboard objectives add Chuz.F.Check_X dummy
    scoreboard objectives add Chuz.F.Check_Y dummy
    scoreboard objectives add Chuz.F.Check_Z dummy

# スコアIDだ
    scoreboard objectives add Chuz_Pl.IDCore dummy
    scoreboard objectives add Chuz_Pl.ID dummy
    scoreboard objectives add Chuz_En.ID dummy
    scoreboard objectives add Chuz_Mo.ID dummy

# 時たま使い回されるチーム
    team add No_Collision
    team modify No_Collision collisionRule never

# やぶ台のレシピ
    data modify storage yv:custom_crafter Import append value {Pattern:[{Count:1b,Slot:1b,id:"minecraft:piston"},{Count:1b,Slot:2b,id:"minecraft:oak_log"},{Count:1b,Slot:3b,id:"minecraft:gold_ingot"},{Count:1b,Slot:10b,id:"minecraft:oak_log"},{Count:1b,Slot:11b,id:"minecraft:crossbow",tag:{Damage:0}},{Count:1b,Slot:19b,id:"minecraft:gold_ingot"},{Count:1b,Slot:21b,id:"minecraft:diamond"}],Result:{Count:1b,Slot:15b,id:"minecraft:crossbow",tag:{ChuzData:{Ammo:-1,AmmoUse:1,ItemID:"Potion_Launcher",OffhandEvent:1b,RawName:'{"text":"Launcher Crossbow","color":"aqua","italic":false}'},CustomModelData:30,Damage:0,Enchantments:[{id:"minecraft:quick_charge",lvl:6s}],HideFlags:5,Unbreakable:1b,display:{Lore:['{"text":" "}','{"text":"[Sneak: Charge]","color":"white","italic":false}','{"text":"[RClick: Shot]","color":"white","italic":false}','{"text":"[Swap: Load Item]","color":"white","italic":false}','{"text":" "}','{"text":"\\"いろんな物を装填して放つことができる！\\"","color":"gray","italic":false}'],Name:'{"text":"Launcher Crossbow","color":"aqua","italic":false}'}}}}