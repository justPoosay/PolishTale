if (d == 0)
    scr_depth()
if (fun == false)
{
    myinteract = 0
    if (hhspeed == 0 && vhspeed == 0)
    {
        image_index = 0
        image_speed = 0
    }
    if (abs(hhspeed) > 0 || abs(vhspeed) > 0)
    {
        image_speed = 0.2
        if (image_index == 1 || image_index == 3)
            snd_play(snd_undynestep)
    }
}
gg = room_width - view_wview[0]
hh = room_height - view_hview[0]
if (view_xview[0] >= 0)
{
    x = xhome + (floor(view_xview[0] - view_xview[0] * scrollspeed))
    g = x - xprevious
}
if (view_xview[0] >= gg)
{
    x = xhome + (floor(gg - gg * scrollspeed))
    g = x - xprevious
}
if (view_yview[0] >= 0)
    y = yhome + (floor(view_yview[0] - view_yview[0] * scrollspeed))
if (view_yview[0] >= hh)
    y = yhome + (floor(hh - hh * scrollspeed))
xhome += hhspeed
yhome += vhspeed
