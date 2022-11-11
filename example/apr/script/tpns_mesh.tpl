
#-----------------------------------------------------------------------------
# P/G Template for Power Plan Creation
#-----------------------------------------------------------------------------

template : mesh(wh, wv, oh, ov, ph, pv, nh, nv) { 
#    layer : METAL3 {
#        direction   : horizontal
#        width       : @wh
#        spacing     : minimum
#        number      : @nh
#        pitch       : @ph
#        offset_start: boundary          # can also specify coordinate as {x y}
#        offset_type : edge              # can also specify centerline
#        offset      : @oh
#        trim_strap  : true
#        }

    layer : METAL4 {
        direction   : vertical
        width       : @wv
        spacing     : 1.12
        number      : @nv
        pitch       : @pv
        offset_start: boundary          # can also specify coordinate as {x y}
        offset_type : edge              # can also specify centerline
        offset      : @ov
        trim_strap  : true
        }

    # Advanced rules for power plan creation.
    advanced_rule : off {               # all the advanced rules are turned off
        stack_vias  : all               # all | adjacent | specified
        no_vias     : off               # do not create vias

        optimize_routing_tracks : off {
            layer     : all             # layers to perform optimization
            alignment : true            # align straps to track or half-track
            sizing    : true            # further size up straps w/o blocking more tracks
            }

        insert_channel_straps : off {
            layer                    :          # channel strap layer
            width                    : minimum  # channel strap width
            spacing                  : minimum  # channel strap spacing
            channel_threshold        :          # ignore channels narrower than the threshold
            check_one_layer          : false    # only check straps in the specified layer
            boundary_strap           : false    # insert straps between region boundary
            honor_placement_blockage : true     # honor channels between placement blocakges and macros
            honor_voltage_area       : false    # honor channels between voltage areas and macros
            honor_keepout_margins    : true     # honor channels between hard keepout margins
            }

        honor_max_stdcell_strap_distance : off {
            max_distance :              # maximum distance from stdcell to strap
            layer        :              # additional strap layer
            offset       :              # offset to the nearest straps
            }

        align_straps_with_power_switch : off {
            power_switch :              # specify power switch name to align
            layer        :              # strap layer
            width        :              # strap width
            direction    :              # strap direction
            offset       :              # offset from the center of pin
            }

        align_straps_with_stdcell_rail : off {
            layer            :          # strap layer
            align_with_rail  : false    # align strap with the rail
            put_strap_in_row : false    # put straps inside cell row
            }

        honor_advanced_via_rules        : off
        align_straps_with_terminal_pin  : off

        align_straps_with_physical_cell : off {
            layer     :                 # strap layer
            cell      :                 # lib cell to align
            pin       :                 # pin to align
            direction :                 # strap direction
            width     :                 # strap width
            offset    :                 # offset from the center of pin
            }
        }
    }

