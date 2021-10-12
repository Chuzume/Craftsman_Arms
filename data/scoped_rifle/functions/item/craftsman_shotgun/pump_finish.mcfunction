
# サウンド
    playsound minecraft:block.piston.extend player @a ~ ~ ~ 1 2
    playsound minecraft:block.iron_door.close player @a ~ ~ ~ 1 2
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 0.6 1.1

# スコアリセット
    scoreboard players reset @s S.Rif_Pump

# ポンプがしゃこん
    scoreboard players set $CMD Chuz.Temporary 31
    function scoped_rifle:item/craftsman_shotgun/replace_cmd