var xx, yy, s, specialcase, xx0, is_ascii, len;
xx = argument0
yy = argument1
s = argument2
specialcase = 0
if (xx < 0)
{
    specialcase = 1
    xx = (-xx)
}
if (global.language != "ja")
{
    draw_text(xx, yy, s)
    exit
}
xx0 = xx
while (strlen(s) > 0)
{
    if (string_char_at(s, 1) == "#")
    {
        yy += 18
        xx = xx0
        s = substr(s, 2)
    }
    else
    {
        is_ascii = (string_char_at(s, 1) >= " " && string_char_at(s, 1) <= "~" && ((!specialcase) || (string_char_at(s, 1) != "(" && string_char_at(s, 1) != ")" && string_char_at(s, 1) != "1")))
        len = 1
        while (len < strlen(s) && string_char_at(s, (1 + len)) != "#" && (string_char_at(s, (1 + len)) >= " " && string_char_at(s, (1 + len)) <= "~" && ((!specialcase) || (string_char_at(s, (1 + len)) != "(" && string_char_at(s, (1 + len)) != ")" && string_char_at(s, (1 + len)) != "1"))) == is_ascii)
            len++
        if is_ascii
            draw_set_font(fnt_maintext)
        else
            draw_set_font(fnt_ja_maintext)
        draw_text(xx, yy, substr(s, 1, len))
        xx += round(string_width(substr(s, 1, len)))
        s = substr(s, (len + 1))
    }
}
draw_set_font(fnt_ja_maintext)
