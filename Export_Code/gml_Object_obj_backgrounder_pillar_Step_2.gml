if (view_xview[0] >= 0)
    x = 200 + (floor(view_xview[0] - view_xview[0] * scrollspeed))
gg = room_width - view_wview[0]
if (view_xview[0] >= gg)
    x = 200 + (floor(gg - gg * scrollspeed))
