if (global.debug == true)
{
    draw_set_color(c_yellow)
    scr_setfont(fnt_maintext)
    draw_text(obj_mainchara.x, (obj_mainchara.y - 30), alarm[4])
    draw_text(obj_mainchara.x, (obj_mainchara.y - 10), unbuffer)
}
