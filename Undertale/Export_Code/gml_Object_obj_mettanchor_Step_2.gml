if (global.flag[20] <= 9 && global.flag[20] > 0)
    j = global.flag[20]
sprite_index = mysprite[(j - 1)]
if (instance_exists(obj_shaker) == 0)
{
    if (on == 1)
    {
        view_xview[0] = round(obj_mainchara.x - view_wview[0] / 2 + 10)
        view_yview[0] = round(obj_mainchara.y - view_hview[0] / 2 + 10)
        if (view_yview[0] <= 0)
            view_yview[0] = 0
    }
}
if (on == 1)
{
    x = view_xview[0] + stayx
    y = view_yview[0] + stayy
}
if (on == 2)
{
    adjust = 0
    if (x > (view_xview[0] + view_wview[0] - 50))
    {
        x -= 4
        adjust = 1
    }
    if (y > (view_yview[0] + view_hview[0] - 80))
    {
        y -= 4
        adjust = 1
    }
    if (adjust == 0)
    {
        siner += 1
        x += ((cos(siner / 2)) * 0.5)
        y += sin(siner / 6)
    }
}
if (view_yview[0] <= 0)
    view_yview[0] = 0
