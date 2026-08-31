#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/get_age
#||
#||    # function
#||        @yk.lib:grow_block/align
#||
#|| ------ End ------ ||#

## 初期化
    scoreboard players set $Age yk.lib.global -1

## 最大値もとる
    function yk.lib:grow_block/get_max_age

## ゴリ押し
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=0] run return run scoreboard players set $Age yk.lib.global 0
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=1] run return run scoreboard players set $Age yk.lib.global 1
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=2] run return run scoreboard players set $Age yk.lib.global 2
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=3] run return run scoreboard players set $Age yk.lib.global 3
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=4] run return run scoreboard players set $Age yk.lib.global 4
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=5] run return run scoreboard players set $Age yk.lib.global 5
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=6] run return run scoreboard players set $Age yk.lib.global 6
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=7] run return run scoreboard players set $Age yk.lib.global 7
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=8] run return run scoreboard players set $Age yk.lib.global 8
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=9] run return run scoreboard players set $Age yk.lib.global 9
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=10] run return run scoreboard players set $Age yk.lib.global 10
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=11] run return run scoreboard players set $Age yk.lib.global 11
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=12] run return run scoreboard players set $Age yk.lib.global 12
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=13] run return run scoreboard players set $Age yk.lib.global 13
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=14] run return run scoreboard players set $Age yk.lib.global 14
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=15] run return run scoreboard players set $Age yk.lib.global 15
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=16] run return run scoreboard players set $Age yk.lib.global 16
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=17] run return run scoreboard players set $Age yk.lib.global 17
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=18] run return run scoreboard players set $Age yk.lib.global 18
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=19] run return run scoreboard players set $Age yk.lib.global 19
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=20] run return run scoreboard players set $Age yk.lib.global 20
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=21] run return run scoreboard players set $Age yk.lib.global 21
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=22] run return run scoreboard players set $Age yk.lib.global 22
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=23] run return run scoreboard players set $Age yk.lib.global 23
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=24] run return run scoreboard players set $Age yk.lib.global 24
    execute if block ~ ~ ~ #yk.lib:grow_block/has_age[age=25] run return run scoreboard players set $Age yk.lib.global 25