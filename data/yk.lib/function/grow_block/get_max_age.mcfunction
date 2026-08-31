#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/get_max_age
#||
#||    # function
#||        @yk.lib:grow_block/align
#||        @yk.lib:grow_block/get_age
#||
#|| ------ End ------ ||#

## 初期化
scoreboard players set $MaxAge yk.lib.global 0

## タグにしてるのでそこから分岐
 execute if block ~ ~ ~ #yk.lib:grow_block/max_age/1 run return run scoreboard players set $MaxAge yk.lib.global 1
 execute if block ~ ~ ~ #yk.lib:grow_block/max_age/2 run return run scoreboard players set $MaxAge yk.lib.global 2
 execute if block ~ ~ ~ #yk.lib:grow_block/max_age/3 run return run scoreboard players set $MaxAge yk.lib.global 3
 execute if block ~ ~ ~ #yk.lib:grow_block/max_age/4 run return run scoreboard players set $MaxAge yk.lib.global 4
 execute if block ~ ~ ~ #yk.lib:grow_block/max_age/7 run return run scoreboard players set $MaxAge yk.lib.global 7
execute if block ~ ~ ~ #yk.lib:grow_block/max_age/25 run return run scoreboard players set $MaxAge yk.lib.global 25
