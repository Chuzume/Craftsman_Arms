
# パーティクル
    function scoped_rifle:entity/bullet/particle

# 再帰カウントが0なら弾速からセット
    execute unless entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run scoreboard players operation @s Chuz.Recursion = @s Chuz.Speed

# 前進
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] run tp @s ^ ^ ^0.25 ~ ~

# スコア減算
    scoreboard players remove @s Chuz.Recursion 1
    scoreboard players remove @s Chuz.Range 1

# プレイヤーの衝突判定
    execute positioned ~-0.5 ~0.0 ~-0.5 positioned ~0.3 ~-0.1 ~0.3 if entity @e[dx=0,type=!#scoped_rifle:unhurtable,type=!ender_dragon,sort=nearest,limit=1] at @s positioned ~-0.5 ~-0.4 ~-0.5 positioned ~-0.3 ~-0.3 ~-0.3 if entity @e[dx=0,type=!#scoped_rifle:unhurtable,sort=nearest,limit=1] at @s run function scoped_rifle:entity/bullet/hit

# 対ドラゴン
    execute at @s at @e[type=minecraft:ender_dragon,team=!null,distance=..6,sort=nearest,limit=1] run function scoped_rifle:entity/bullet/hit

# 壁の衝突判定
    execute unless block ~ ~ ~ #scoped_rifle:no_collision run function scoped_rifle:entity/bullet/break
    
# 再帰
    execute if entity @s[scores={Chuz.Recursion=1..,Chuz.Range=1..}] at @s run function scoped_rifle:entity/bullet/move

# キル
    execute if entity @s[scores={Chuz.Range=0}] run kill @s