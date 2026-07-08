# yk.lib:get_buildheight/.root

## Init

data modify storage yk.lib:values tmp.Success set value false
data modify storage yk.lib:values tmp.getMax set value false

## ループ開始

execute positioned 0 2032.0 0 run function yk.lib:get_buildheight/loop

## データ消しとく

data remove storage yk.lib:values tmp
