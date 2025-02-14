draw_set_color(c_red)
scr_setfont(fnt_maintext)
if instance_exists(obj_mainchara)
{
    draw_text(20, 60, obj_mainchara.x)
    draw_text(20, 80, obj_mainchara.y)
}
