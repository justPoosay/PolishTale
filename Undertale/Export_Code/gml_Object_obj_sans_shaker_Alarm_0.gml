view_xview[0] = (choose(-1, 1)) * intensity
view_yview[0] = (choose(1, -1)) * intensity
intensity -= 1
if (intensity == 0)
    instance_destroy()
alarm[0] = 1
