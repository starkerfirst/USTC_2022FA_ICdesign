
#-----------------------------------------------------------------------------
# Ring Template for Power Ring Creation
#-----------------------------------------------------------------------------

template : ring(wh, wv) {
    side : horizontal {
        layer   : METAL3
        width   : @wh
        spacing : minimum
        offset  : 1
        }

    side : vertical {
        layer   : METAL4
        width   : @wv
        spacing : minimum
        offset  : 1
        }

    # Advanced rules for power plan creation.
    advanced_rule : off {               # all the advanced rules are turned off
        corner_bridge           : off   # connecting all rings at the corners
        align_std_cell_rail     : off   # align horizontal ring segments with std cell rails
        honor_advanced_via_rule : off   # honor advanced via rules
        }
    }

