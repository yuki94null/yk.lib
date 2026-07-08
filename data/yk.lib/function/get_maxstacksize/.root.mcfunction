# yk.lib:get_maxstacksize
#
# input: storage yk.lib:inputs Item
#

## max stack sizeがあればそれをとって終了

execute if data storage yk.lib:inputs Item.components."minecraft:max_stack_size" run return run data modify storage yk.lib:values MaxStackSize set from storage yk.lib:inputs Item.components."minecraft:max_stack_size"

## 無ければ演算

### チェストに入れる

summon chest_minecart ~ -2048 ~ {Tags:[tmp],Items:[{Slot:0b,id:"minecraft:stone",count:99}]}

### id移す

data modify entity @n[tag=tmp] Items[{Slot:0b}].id set from storage yk.lib:inputs Item.id

### アイテムの更新かけると最大サイズになるのを利用する

item replace entity @n[tag=tmp] container.0 from entity @n[tag=tmp] container.0

### 個数を取得

execute store result storage yk.lib:values MaxStackSize int 1.0 run data get entity @n[tag=tmp] Items[{Slot:0b}].count

### input消して

data remove storage yk.lib:inputs Item

### 死ぬ

kill @n[tag=tmp]
