var bxcount, bycount, bxstart, bystart, bxspace, byspace, by, bx;
gg = floor(random(3))
mycommand = round(random(100))
global.msg[0] = scr_gettext("obj_lemonbread_175")
if (mycommand < 75)
    global.msg[0] = scr_gettext("obj_lemonbread_176")
if (mycommand < 50)
    global.msg[0] = scr_gettext("obj_lemonbread_177")
if (mycommand < 25)
    global.msg[0] = scr_gettext("obj_lemonbread_178")
if (turns == 0)
{
    global.msg[0] = scr_gettext("obj_lemonbread_196")
    turns = 1
    mycommand = 20
}
if (turns == 2)
    global.msg[0] = scr_gettext("obj_lemonbread_200")
if (mercymod > 50000 && turns == 1)
{
    global.msg[0] = scr_gettext("obj_lemonbread_202")
    global.msg[0] = scr_gettext("obj_lemonbread_203")
    turns = 2
}
global.msg[1] = scr_gettext("obj_lemonbread_207")
global.typer = 2
bxcount = 6
bycount = 2
bxstart = 0
bystart = 0
bxspace = 101
byspace = 119
by = bystart
repeat bycount
{
    bx = bxstart
    repeat bxcount
    {
        blcon = instance_create((10 + bx), (10 + by), obj_blconsm)
        blcon.depth = 20
        blconwd = instance_create((blcon.x + 15), (blcon.y + 10), OBJ_NOMSCWRITER)
        blconwd.depth = 10
        bx += bxspace
    }
    by += byspace
}
global.border = 5
obj_heart.x = (round((global.idealborder[0] + global.idealborder[1]) / 2)) - 8
obj_heart.y = (round((global.idealborder[2] + global.idealborder[3]) / 2)) - 8
