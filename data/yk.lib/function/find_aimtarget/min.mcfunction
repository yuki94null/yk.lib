# yk.lib:find_aimtarget/min

## 最小値を更新

scoreboard players operation $min_value yk.lib.global = $target_rx yk.lib.global

## 最小のやつを私にする

tag @e remove yk.lib.find_aimtarget.min
tag @s add yk.lib.find_aimtarget.min
