if instance_exists(obj_mainchara)
{
    with (obj_mainchara)
        view_xview[0] = round(x - view_wview[0] / 2 + sprite_width / 2)
    if (global.flag[85] == 1)
    {
        with (obj_mainchara)
            view_xview[0] = floor(x - 160 + sprite_width / 2)
    }
}
