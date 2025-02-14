draw_self_custom(0, 9999, 0, (ystart + 40))
if (yoff > 1)
    y -= 1
yoff -= 1
if (x > ((view_xview[(0 << 0)]) + view_wview[0]))
    instance_destroy()
if (x < ((view_xview[(0 << 0)]) - 10))
    instance_destroy()
if (y > ((view_yview[(0 << 0)]) + (view_hview[(0 << 0)]) + 30))
    instance_destroy()
if (y < view_yview[(0 << 0)])
    instance_destroy()
