var b, c, i, xx, g, yy, f;
b = argument0
c = argument1
a += 3
for (i = 0; i < 40; i += 2)
{
    a += 1
    xx = x + (sin(a / b)) * c
    for (g = 0; g < 4; g++)
    {
        yy = y + i
        for (f = 0; f < 8; f++)
        {
            draw_sprite_part(sprite_index, image_index, 0, i, sprite_width, 2, xx, yy)
            yy += 40
        }
        xx += 100
    }
}
