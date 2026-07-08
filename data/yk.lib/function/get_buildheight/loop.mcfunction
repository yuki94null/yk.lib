# yk.lib:get_buildheight/loop

## 初期化

data modify storage yk.lib:values tmp.Success set value 0

## 釣りができたかを保存

execute store success storage yk.lib:values tmp.Success int 1.0 run \
    loot spawn ~ ~ ~ fish yk.lib:empty ~ ~-16 ~

## Maxをまだとってなければmaxに入れる

execute if data storage yk.lib:values tmp{getMax:false} if data storage yk.lib:values tmp{Success:1} \
    summon marker run \
        function yk.lib:get_buildheight/get_max

## Maxあとに失敗したら下限なのでminに入れる

execute if data storage yk.lib:values tmp{getMax:true} if data storage yk.lib:values tmp{Success:0} run \
    return run \
        execute summon marker run \
            function yk.lib:get_buildheight/get_min

## 下行きすぎたら失敗にする

execute if predicate {condition:"location_check",predicate:{position:{y:{max:-2033}}}} run \
    return fail

## 位置を下げてループ(高度上限は16刻み)

execute positioned ~ ~-16.0 ~ run \
    function yk.lib:get_buildheight/loop
