#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/crops/0.75_growth
#||
#||    # function
#||        @yk.lib:grow_block/crops/root
#||
#|| ------ End ------ ||#

## 75%でAgeを増やす
    execute if predicate {condition:"minecraft:random_chance",chance:0.75} run scoreboard players add $Age yk.lib.global 1