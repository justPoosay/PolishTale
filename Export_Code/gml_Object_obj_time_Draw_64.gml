if (global.debug == true)
{
    draw_set_font(fnt_maintext)
    draw_set_color(c_white)
    draw_text(10, 10, round(time / 30))
    draw_text(10, 30, global.savedata_debuginfo)
}
