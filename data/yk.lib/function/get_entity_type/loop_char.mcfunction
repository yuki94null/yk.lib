#|| --- CrossRefs --- ||#
#|| @yk.lib:get_entity_type/loop_char
#||
#||    # function
#||        @yk.lib:get_entity_type/loop_char
#||
#|| ------ End ------ ||#
# 文字を直接取得
$execute store success score $Success yk.lib.global run data modify storage yk.lib:global Str_Macro set string storage yk.lib:global entity_id $(Str_Start) $(Str_End)

# ":" → "."
execute if data storage yk.lib:global {get_entity_type:{Str_Macro:":"}} run data modify storage yk.lib:global Str_Macro set value "."

# entity_name に追加
$data merge storage yk.lib:global {get_entity_type:{entity_name:"$(entity_name)$(Str_Macro)"}}

# 次の文字位置へ
execute store result storage yk.lib:global Str_Start int 1.0 run scoreboard players add $Str_Start yk.lib.global 1
execute store result storage yk.lib:global Str_End int 1.0 run scoreboard players add $Str_End yk.lib.global 1

# 次の文字
execute if score $Success yk.lib.global matches 1.. run function yk.lib:get_entity_type/loop_char with storage yk.lib:global
