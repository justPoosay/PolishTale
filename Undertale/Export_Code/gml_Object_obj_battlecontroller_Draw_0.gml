var maxwidth, i, name, width, j, ch, lineheight, y_start, first, xx, yy, lineheader, num_items, arrow_yofs, spr;
if (global.turntimer > 0)
{
    depth = -1000
    draw_set_color(c_red)
    global.turntimer -= 1
}
if instance_exists(obj_uborder)
{
    depth = 5
    draw_set_color(c_black)
    if (drawrect == 1)
        ossafe_fill_rectangle((obj_uborder.x + 5), (obj_uborder.y + 5), obj_rborder.x, obj_dborder.y)
}
if (background_color != c_white && drawbinfo == 1)
    script_execute(scr_binfowrite)
if (global.bmenuno == 1 && global.myfight == 0 && global.mnfight == 0)
{
    maxwidth = 0
    for (i = 0; i < 3; i++)
    {
        if (global.monster[i] == true)
        {
            name = global.monstername[i]
            if (global.language == "ja")
            {
                width = 0
                for (j = 1; j <= strlen(name); j++)
                {
                    ch = ord(string_char_at(name, j))
                    if (ch == 32 || ch >= 65377)
                        width += 13
                    else if (ch < 8192)
                        width += 16
                    else
                        width += 26
                }
            }
            else
                width = strlen(name) * 16
            if (width > maxwidth)
                maxwidth = width
        }
    }
    xwrite = 190 + maxwidth
    for (i = 0; i < 3; i++)
    {
        if (global.monster[i] == true && (!instance_exists(obj_sansb)))
        {
            draw_set_color(c_red)
            lineheight = 32
            y_start = 280
            if (global.language == "ja")
                lineheight = 36
            draw_rectangle(xwrite, (y_start + i * lineheight), (xwrite + 100), (y_start + i * lineheight + 16), false)
            draw_set_color(c_lime)
            draw_rectangle(xwrite, (y_start + i * lineheight), (xwrite + global.monsterhp[i] / global.monstermaxhp[i] * 100), (y_start + i * lineheight + 16), false)
        }
    }
}
if (global.language == "ja" && global.bmenuno >= 3 && global.bmenuno < 4 && global.myfight == 0 && global.mnfight == 0)
{
    first = (global.bmenuno - 3) * 8
    scr_setfont(fnt_main)
    draw_set_color(c_white)
    xx = global.idealborder[0] + 20
    yy = global.idealborder[2] + 20
    lineheader = scr_gettext("item_menub_header")
    i = 0
    while (i < 3 && global.item[(first + i)] != 0)
    {
        draw_text(xx, (yy + i * 36), (lineheader + (global.itemnameb[(first + i)])))
        i++
    }
    num_items = 8
    while (num_items > 0 && global.item[(num_items - 1)] == 0)
        num_items--
    if (num_items > 3)
    {
        xx = global.idealborder[1] - 30
        yy = (floor((global.idealborder[2] + global.idealborder[3]) / 2)) - 5 * (2 + num_items)
        arrow_yofs = round((min(((obj_time.time % 30) / 30), 0.5)) * 6)
        if (first > 0)
            draw_sprite(spr_bitem_ja_arrow, 0, xx, (yy - arrow_yofs))
        yy += 10
        for (i = 0; i < num_items; i++)
        {
            if ((first + global.bmenucoord[3]) == i)
                spr = spr_bitem_ja_largedot
            else
                spr = spr_bitem_ja_smalldot
            draw_sprite(spr, 0, xx, yy)
            yy += 10
        }
        if ((first + 3) < num_items)
            draw_sprite_ext(spr_bitem_ja_arrow, 0, xx, (yy + 10 + arrow_yofs), 1, -1, 0, c_white, 1)
    }
}
