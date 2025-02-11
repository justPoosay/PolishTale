var x0, y0, str, icon_scale, len, line_height, outstr, xx, yy, i, sprite;
x0 = argument[0]
y0 = argument[1]
str = scr_replace_buttons_pc(argument[2])
icon_scale = 1
if (argument_count >= 4)
    icon_scale = argument[3]
len = strlen(str)
line_height = string_height(" ")
outstr = ""
xx = argument[0]
yy = argument[1]
for (i = 1; i < len; i++)
{
    if (substr(str, i, 1) == "#")
    {
        if (outstr != "")
        {
            draw_text(xx, yy, outstr)
            outstr = ""
        }
        xx = x0
        yy += line_height
    }
    else if (substr(str, i, 2) == "\*")
    {
        if (outstr != "")
        {
            draw_text(xx, yy, outstr)
            xx += round(string_width(outstr))
            outstr = ""
        }
        i += 2
        sprite = scr_getbuttonsprite(substr(str, i, 1), 0)
        if (sprite != -4)
        {
            draw_sprite_ext(sprite, 0, xx, yy, icon_scale, icon_scale, 0, c_white, 1)
            xx += ((sprite_get_width(sprite) + 1) * icon_scale)
        }
    }
    else
        outstr += substr(str, i, 1)
}
if (outstr != "")
    draw_text(xx, yy, outstr)
