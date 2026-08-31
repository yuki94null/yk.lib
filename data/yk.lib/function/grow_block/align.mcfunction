#|| --- CrossRefs --- ||#
#|| @yk.lib:grow_block/align
#||
#||    # function
#||        @yk.lib:grow_block/.root
#||
#|| ------ End ------ ||#

## 違うブロックならやめる
    execute unless block ~ ~ ~ #yk.lib:grow_block/fertilizable run return fail



## init
    data remove storage yk.lib:global grow_block

## データを取得
    ### IDを取得
        function yk.lib:grow_block/check_id

    ### Ageを取得
        execute if block ~ ~ ~ #yk.lib:grow_block/has_age run function yk.lib:grow_block/get_age
    ### MaxAgeを取得
        execute if block ~ ~ ~ #yk.lib:grow_block/has_age run function yk.lib:grow_block/get_max_age

## それぞれのブロックで分岐する
    ### 種
        execute if block ~ ~ ~ #yk.lib:grow_block/crops run return run function yk.lib:grow_block/crops/root
