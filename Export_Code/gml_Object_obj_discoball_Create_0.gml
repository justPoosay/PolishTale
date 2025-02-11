y = view_yview[0] - sprite_width
on = 1
amt = 0
siner = 0
reverse = 0
if (instance_find(object_index, 1) != -4)
    reverse = 1
else
    instance_create((view_xview[0] + 240), (view_yview[0] - sprite_width), object_index)
image_speed = 0.334
