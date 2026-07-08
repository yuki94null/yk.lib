# yk.lib:find_aimtarget/angle

## アングルとるようマーカー

summon marker ~ ~ ~ {Tags:[yk.lib.find_aimtarget.marker]}
rotate @n[tag=yk.lib.find_aimtarget.marker] facing entity @s feet

execute store result score $target_rx yk.lib.global run data get entity @n[tag=yk.lib.find_aimtarget.marker] Rotation[1] 1000000
execute store result score $target_ry yk.lib.global run data get entity @n[tag=yk.lib.find_aimtarget.marker] Rotation[0] 1000000

kill @e[tag=yk.lib.find_aimtarget.marker]

## Clamp

execute \
    if score $base_ry yk.lib.global matches ..-90000000 \
        if score $target_ry yk.lib.global matches 0.. run scoreboard players remove $target_ry yk.lib.global 180000000

execute \
    if score $base_ry yk.lib.global matches 90000000.. \
        if score $target_ry yk.lib.global matches ..0 run scoreboard players add $target_ry yk.lib.global 180000000

## 差を出す

scoreboard players operation $target_rx yk.lib.global -= $base_rx yk.lib.global
scoreboard players operation $target_ry yk.lib.global -= $base_ry yk.lib.global

## 差の絶対値をとる

scoreboard players set #-1 yk.lib.global -1

execute if score $target_rx yk.lib.global matches ..0 run scoreboard players operation $target_rx yk.lib.global *= #-1 yk.lib.global
execute if score $target_ry yk.lib.global matches ..0 run scoreboard players operation $target_ry yk.lib.global *= #-1 yk.lib.global

## 足して大きさ出す

scoreboard players operation $target_rx yk.lib.global += $target_ry yk.lib.global

## 最小値なら更新

execute if score $min_value yk.lib.global > $target_rx yk.lib.global run return run function yk.lib:find_aimtarget/min
