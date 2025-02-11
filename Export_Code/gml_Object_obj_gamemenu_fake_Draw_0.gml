var roomname, lvtext, timetext, namesize, lvsize, timesize, x_center, lvpos, namepos, timepos, continue_pos, restart_pos;
draw_set_color(c_white)
scr_setfont(fnt_maintext)
roomname = scr_gettext("flowey_load_room")
lvtext = scr_gettext("flowey_load_lv")
timetext = scr_gettext("flowey_load_time")
namesize = string_width(substr(name, 1, 6))
lvsize = string_width(lvtext)
timesize = string_width(timetext)
x_center = 160
lvpos = round(x_center + namesize / 2 - timesize / 2 - lvsize / 2)
namepos = 70
timepos = 250
if (global.language == "ja")
{
    namepos -= 6
    timepos += 6
}
draw_text(namepos, 62, name)
draw_text(lvpos, 62, lvtext)
draw_text((timepos - timesize), 62, timetext)
scr_drawtext_centered(x_center, 80, roomname)
continue_pos = 85
restart_pos = 175
if (global.language == "ja")
{
    continue_pos = namepos
    restart_pos = timepos - string_width(scr_gettext("flowey_load_restart"))
}
if (selected3 == 0)
    draw_set_color(c_yellow)
else
    draw_set_color(c_white)
draw_text(continue_pos, 110, scr_gettext("flowey_load_continue"))
if (selected3 == 1)
    draw_set_color(c_yellow)
else
    draw_set_color(c_white)
draw_text(restart_pos, 110, scr_gettext("flowey_load_restart"))
