var ww, wh, sw, sh, xx, yy, lineheight, line1, dot, line2, width1, width2, width, i;
if (global.osflavor >= 3)
{
    ww = window_get_width()
    wh = window_get_height()
    sw = surface_get_width(application_surface)
    sh = surface_get_height(application_surface)
    xx = floor((ww - sw * global.window_scale) / 2)
    yy = floor((wh - sh * global.window_scale) / 2)
    global.window_xofs = xx
    global.window_yofs = yy
    texture_set_interpolation(false)
    if (global.screen_border_active && global.screen_border_alpha > 0)
    {
        scr_draw_screen_border(global.screen_border_id)
        if (global.screen_border_alpha < 1)
        {
            draw_set_alpha(1 - global.screen_border_alpha)
            draw_set_color(c_black)
            ossafe_fill_rectangle(0, 0, (ww - 1), (wh - 1))
            draw_set_alpha(1)
            draw_set_color(c_white)
        }
    }
    draw_enable_alphablend(false)
    draw_surface_ext(application_surface, xx, yy, global.window_scale, global.window_scale, 0, c_white, 1)
    draw_enable_alphablend(true)
}
else
{
    global.window_xofs = 0
    global.window_yofs = 0
}
if (started < 0 && trophy_ts > 0 && (current_time - trophy_ts) >= 2000)
{
    scr_setfont(fnt_main)
    lineheight = 32
    if (global.language == "ja")
        lineheight = 36
    line1 = scr_gettext("trophy_install")
    dot = scr_gettext("trophy_install_dot")
    line2 = scr_gettext("trophy_install_line2")
    width1 = string_width(line1 + dot + dot + dot)
    width2 = string_width(line2)
    width = max(width1, width2)
    xx = window_get_width() - 10 - width
    yy = 10
    for (i = 0; i < ((floor((current_time - trophy_ts) / 500)) % 4); i++)
        line1 += dot
    draw_set_color(c_white)
    draw_text(xx, yy, line1)
    draw_text(xx, (yy + lineheight), line2)
}
