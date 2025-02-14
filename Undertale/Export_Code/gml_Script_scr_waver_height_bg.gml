b = argument0
c = argument1
a += 1
for (i = background_height[0]; i > 0; i -= 1)
{
    a += 1
    if (c > 0)
        c -= 0.1
    if (c < 0)
        c -= 0.1
    draw_background_part_ext(background_index[0], 0, i, background_width[0], 1, (x + (sin(a / b)) * c), (y + i), 1, 1, c_white, image_alpha)
}
