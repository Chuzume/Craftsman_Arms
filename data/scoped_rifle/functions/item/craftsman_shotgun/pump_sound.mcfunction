
# ポンプがしゃこん
    scoreboard players set $CMD Chuz.Temporary 32
    function scoped_rifle:item/craftsman_shotgun/replace_cmd

# サウンド
    playsound minecraft:block.iron_trapdoor.close master @a ~ ~ ~ 0.8 1
    playsound minecraft:block.iron_door.open master @a ~ ~ ~ 0.6 1.1
    playsound minecraft:block.piston.contract master @a ~ ~ ~ 0.8 2