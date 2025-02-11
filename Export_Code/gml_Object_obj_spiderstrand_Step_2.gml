myview = view_xview[0]
gg = room_width - view_wview[0]
if (myview < 0)
    myview = 0
if (view_xview[0] <= 0)
    x = xhome
if (view_xview[0] > 0)
    x = xhome + (floor(view_xview[0] - view_xview[0] * scrollspeed))
if (view_xview[0] >= gg)
    x = xhome + (floor(gg - gg * scrollspeed))
