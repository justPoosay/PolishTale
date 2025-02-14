var ww, wh, sw, sh, scale_w, scale_h;
ww = window_get_width()
wh = window_get_height()
sw = surface_get_width(application_surface)
sh = surface_get_height(application_surface)
scale_w = ww / sw
scale_h = wh / sh
if (global.osflavor >= 4)
    global.window_scale = floor(min(scale_w, scale_h))
else
    global.window_scale = min(scale_w, scale_h)
