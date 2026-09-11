#|| --- CrossRefs --- ||#
#|| @yk.lib:direction_to_vec3/.root
#||
#||    # function
#||        @yrh.014:item/bridge_launcher/root
#||
#|| ------ End ------ ||#

#
# multiplier: number
#

##
    $execute positioned 0.0 0.0 0.0 positioned ^ ^ ^$(multiplier) summon marker run function yk.lib:marker_pos_to_vec3/.root
    data modify storage yk.lib:outputs direction_to_vec3 set from storage yk.lib:outputs marker_pos_to_vec3