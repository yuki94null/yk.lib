# yk.lib:find_aimtarget

## Rotをとる

execute store result score $base_rx yk.lib.global run data get entity @s Rotation[1] 1000000
execute store result score $base_ry yk.lib.global run data get entity @s Rotation[0] 1000000

## 最小値をとるため初期値を最大値に

scoreboard players set $min_value yk.lib.global 2147483647

## 自分自身は除く

tag @s add yk.lib.find_aimtarget.exception

## 対象を絞る

execute anchored feet positioned ^ ^ ^ as @e[tag=!yk.lib.find_aimtarget.exception] \
    positioned ^ ^ ^-100000 if entity @s[distance=..100050] positioned ^ ^ ^100000 \
    rotated ~30 ~ positioned ^100000 ^ ^ if entity @s[distance=..100000] positioned ^-100000 ^ ^ rotated ~-30 ~ \
    rotated ~-30 ~ positioned ^-100000 ^ ^ if entity @s[distance=..100000] positioned ^100000 ^ ^ rotated ~30 ~ \
    run \
        tag @s add yk.lib.find_aimtarget

## 対象で判定

execute as @e[tag=yk.lib.find_aimtarget] run function yk.lib:find_aimtarget/angle

## タグ外す

tag @e remove yk.lib.find_aimtarget.exception
tag @e remove yk.lib.find_aimtarget
