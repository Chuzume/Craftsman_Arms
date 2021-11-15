
# 事前にゲームモード取得
    execute store result score $Temp Chuz.Temporary run gamerule mobGriefing

# 爆発
    summon creeper ~ ~200 ~ {CustomName:'{"text":"Grenade"}',ExplosionRadius:1b,Tags:[Chuz.Explosion,Chuz_NonVanillaMob],Fuse:0}
    tp @e[type=creeper,tag=Chuz.Explosion,limit=1] ~ ~0.5 ~
    execute if score $S.Rif_Setting2 Chuz.Rule matches 0 run gamerule mobGriefing false
    execute if score $S.Rif_Setting2 Chuz.Rule matches 0 run schedule function scoped_rifle:entity/grenade/gamerule_return 2t

# 