tellraw @a ["\n----------\n\n",{"text":"[Craftsman Scoped Rifle] の導入に成功しました。\n[Craftsman Scoped Rifle] has been installed.\n\nCreated by "},{"text":"Chuzume","color":"gold"},"\n\n----------\n"]
forceload add 100000 100000
execute unless block 100001 0 100000 light_blue_shulker_box run setblock 100001 0 100000 light_blue_shulker_box
execute unless block 100001 1 100000 bedrock run setblock 100001 1 100000 bedrock
scoreboard players set $S.Rif_Setting1 Chuz.Rule 1

# Chuz.Vector0が存在しなければ召喚
    forceload add 0 0 0 0
    kill @e[type=area_effect_cloud,tag=Chuz.Vector0]
    execute unless entity @e[type=area_effect_cloud,tag=Chuz.Vector0] run summon minecraft:area_effect_cloud 0 0 0 {Tags:["Chuz.Vector0"],Duration:-1,Age:-2147483648,WaitTime:-2147483648}
