# yk.lib:get_buildheight/get_max

## フラグ立てる

data modify storage yk.lib:values tmp.getMax set value true

## Pos入れて死ぬ

data modify storage yk.lib:values BuildHeight.max set from entity @s Pos[1]
kill @s