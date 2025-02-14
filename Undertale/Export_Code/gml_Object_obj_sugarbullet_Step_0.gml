if (vspeed > 0)
    depth = 2
if (size < 1)
    size += 0.04
image_xscale = size
image_yscale = size
image_angle += ang
if (y > (view_yview[0] + 250))
    instance_destroy()
if (x < (view_xview[0] - 10))
    instance_destroy()
if (x > (view_xview[0] + 320))
    instance_destroy()
