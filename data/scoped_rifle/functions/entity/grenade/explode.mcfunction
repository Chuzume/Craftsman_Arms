
# 事前にゲームモード取得
    execute store result score $Temp Chuz.Temporary run gamerule mobGriefing

# 爆発
    summon creeper ~ ~200 ~ {CustomName:'{"text":"Grenade"}',ExplosionRadius:2b,Tags:[Chuz.Explosion],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~0.5 ~
    gamerule mobGriefing false
    schedule function scoped_rifle:entity/grenade/gamerule_return 2t

# パーティクルもつけちゃおうかな
    particle minecraft:lava ~ ~ ~ 1 1 1 0 20

# キル
    kill @s