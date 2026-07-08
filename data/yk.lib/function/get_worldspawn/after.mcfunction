# yk.lib:get_worldspawn/after

## 一応埋めとく

execute in the_end run setblock 100 48 0 obsidian strict 

## 既存のフォースロード戻す

execute in the_end if data storage yk.lib:values tmp{Success:0} run forceload remove 100 0

## Posを入れる

data modify storage yk.lib:values WorldSpawn.x set from entity @n[tag=yk.lib.get_worldspawn.marker] Pos[0]
data modify storage yk.lib:values WorldSpawn.z set from entity @n[tag=yk.lib.get_worldspawn.marker] Pos[2]

## 死ぬ

kill @e[tag=yk.lib.get_worldspawn.marker]
