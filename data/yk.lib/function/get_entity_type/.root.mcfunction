#|| --- CrossRefs --- ||#
#|| @yk.lib:get_entity_type/.root
#||
#||    # function
#||        @yrh.014:item/horse_bundle/horse_data
#||
#|| ------ End ------ ||#

##
#return -> yk.lib:outputs get_entity_type.entity_name
# initialize
    data remove storage yk.lib:global get_entity_type.entity_id
    execute unless entity @s run return fail

## 返す
    execute if entity @s[type=player] run return run data modify storage yk.lib:global get_entity_type.entity_id set value "minecraft:player"
    execute if entity @s[type=marker] run return run data modify storage yk.lib:global get_entity_type.entity_id set value "minecraft:marker"

## すでに乗ってたら一旦タグつける
    tag @e[tag=yk.lib.get_entity_type.vehicle] remove yk.lib.get_entity_type.vehicle
    execute on vehicle run tag @s add yk.lib.get_entity_type.vehicle
    ride @s dismount

## text displayに乗せてpassengers
    execute at @s run summon text_display ~ ~ ~ {Glowing:1b,Tags:[yk.lib.get_entity_type.id_getter]}
    ride @s mount @e[tag=yk.lib.get_entity_type.id_getter,limit=1]
    data modify storage yk.lib:outputs get_entity_type.entity_type set from entity @n[tag=yk.lib.get_entity_type.id_getter] Passengers[].id
    kill @e[tag=yk.lib.get_entity_type.id_getter]

## 乗ってたら乗せ直す
    ride @s mount @n[tag=yk.lib.get_entity_type.vehicle]

    tag @e[tag=yk.lib.get_entity_type.vehicle] remove yk.lib.get_entity_type.vehicle

