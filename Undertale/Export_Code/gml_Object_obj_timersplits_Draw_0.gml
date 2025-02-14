split[splitno] += 1
draw_set_color(c_red)
scr_setfont(fnt_maintext)
draw_set_halign(fa_left)
for (i = 0; i < (splitno + 1); i += 1)
    draw_text((view_xview[0] + 10), (view_yview[0] + 10 + i * 15), split[i])
