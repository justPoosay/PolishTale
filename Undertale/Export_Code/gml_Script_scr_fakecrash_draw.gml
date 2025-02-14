var ww, wh, pot_w, pot_h, total_pixels, num_pixels, rh, i, len, j, index, ix, iy, r, g, b;
if (fakecrash_surface == 0)
{
    ww = window_get_width()
    wh = window_get_height()
    for (pot_w = 1; pot_w < ww; pot_w *= 2)
    {
    }
    for (pot_h = 1; pot_h < wh; pot_h *= 2)
    {
    }
    fakecrash_surface = surface_create(pot_w, pot_h)
    surface_set_target(fakecrash_surface)
    draw_clear_alpha(c_black, 0)
    total_pixels = ww * wh
    num_pixels = total_pixels / 4 + (irandom(total_pixels / 16)) * 4
    rh = ceil(num_pixels / ww)
    draw_set_color(c_black)
    ossafe_fill_rectangle(0, 0, (ww - 1), (rh - 2))
    ossafe_fill_rectangle(0, (rh - 1), ((num_pixels % ww) - 1), (rh - 1))
    for (i = 0; i < num_pixels; i += len)
    {
        len = (floor(ww / 4)) + (irandom(ww / 16)) * 4
        if (len > (num_pixels - i))
            len = num_pixels - i
        if (irandom(5) == 0)
        {
            for (j = 0; j < len; j++)
            {
                index = i + j
                ix = index % ww
                iy = floor(index / ww)
                r = irandom(256)
                g = irandom(256)
                b = irandom(256)
                draw_point_color(ix, iy, make_color_rgb(r, g, b))
            }
        }
    }
    surface_reset_target()
    draw_set_color(c_white)
}
if (current_time < fakecrash_blank_time)
    draw_surface(fakecrash_surface, 0, 0)
else
{
    draw_set_color(c_black)
    ossafe_fill_rectangle(0, 0, (window_get_width() - 1), (window_get_height() - 1))
    draw_set_color(c_white)
    if (!fakecrash_stopped_sounds)
    {
        audio_stop_all()
        fakecrash_stopped_sounds = 1
    }
}
if (current_time >= fakecrash_reset_time)
{
    if (global.savedata_async_id == -1)
    {
        surface_free(fakecrash_surface)
        game_restart()
    }
}
