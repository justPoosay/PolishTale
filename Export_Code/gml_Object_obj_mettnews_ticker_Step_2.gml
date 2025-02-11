if (instance_exists(obj_shaker) == 0)
{
    if (on == 1)
    {
        view_xview[0] = round(obj_mainchara.x - view_wview[0] / 2 + 10)
        view_yview[0] = round(obj_mainchara.y - view_hview[0] / 2 + 10)
    }
}
if (on == 1)
{
    x = view_xview[0] + stayx
    if (x >= (room_width - view_wview[0]))
        x = room_width - view_wview[0]
    y = view_yview[0] + stayy
    if (y <= 200)
        y = 200
    if (view_yview[0] <= 0)
        view_yview[0] = 0
}
if (view_yview[0] <= 0)
    view_yview[0] = 0
