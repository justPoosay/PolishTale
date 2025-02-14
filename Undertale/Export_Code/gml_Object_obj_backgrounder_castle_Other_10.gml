if (view_xview[0] >= 0)
    background_x[4] = 200 + (round(view_xview[0] - view_xview[0] * scrollspeed))
gg = room_width - view_wview[0]
if (view_xview[0] >= gg)
    background_x[4] = 200 + (round(gg - gg * scrollspeed))
