y = 0
if (view_xview[0] >= 0)
    x = (floor(view_xview[0] - view_xview[0] * scrollspeed)) + 150
gg = room_width - view_wview[0]
if (view_xview[0] >= gg)
    x = (floor(gg - gg * scrollspeed)) + 150
