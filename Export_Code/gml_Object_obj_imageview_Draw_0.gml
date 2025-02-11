draw_sprite(sprite_index, image_index, view_xview[0], view_yview[0])
if (buffer == 1 && control_check_pressed(1) == 1)
    buffer = 2
if (buffer == 1 && control_check_pressed(0) == 1)
    buffer = 2
global.interact = 1
if (buffer == 2)
{
    global.interact = 0
    instance_destroy()
}
