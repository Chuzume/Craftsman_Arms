#> forward_spreader:example
# @public

# 実行者の向いている方向から10m離れた地点で1.5m拡散するParticleを召喚する

# 返り値のEntity
    summon marker ~ ~ ~ {Tags:["SpreadMarker"]}
# 拡散の設定 // この場合最大10mで1.5m拡散する
    # どれくらい視点から離すか
        data modify storage forward_spreader: Distance set value 10f
    # どれくらい拡散させるか
        data modify storage forward_spreader: Spread set value 1.5f
# 処理の実行
    execute at @s as @e[type=marker,tag=SpreadMarker,limit=1] run function forward_spreader:api/circle
# 実行者
    execute facing entity @e[type=marker,tag=SpreadMarker,limit=1] feet anchored eyes positioned ^ ^ ^10 run particle end_rod
# リセット
    kill @e[type=marker,tag=SpreadMarker,limit=1]