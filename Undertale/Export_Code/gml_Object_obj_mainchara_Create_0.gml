scr_depth(0, 0, 0, 0, 0)
if (global.flag[7] == 1)
{
    if (global.flag[287] <= global.flag[286])
        global.flag[287] = global.flag[286] + 1
}
if (global.flag[6] == 1 && (!scr_hardmodename(global.charname)))
    global.flag[6] = 0
global.flag[462] = 0
if ((x % 3) == 2)
    x += 1
if ((x % 3) == 1)
    x -= 1
if ((y % 3) == 2)
    y += 1
if ((y % 3) == 1)
    y -= 1
lastfacing = 0
nnn = 0
cutscene = false
oldx = x
oldy = y
image_speed = 0
global.phasing = 0
facing = global.facing
moving = false
movement = 1
global.currentroom = room
if (global.interact == 3)
{
    if (global.entrance > 0)
    {
        global.interact = 0
        if (global.entrance == 1)
        {
            x = obj_markerA.x
            y = obj_markerA.y
        }
        if (global.entrance == 2)
        {
            x = obj_markerB.x
            y = obj_markerB.y
        }
        if (global.entrance == 4)
        {
            x = obj_markerC.x
            y = obj_markerC.y
        }
        if (global.entrance == 5)
        {
            x = obj_markerD.x
            y = obj_markerD.y
        }
        if (global.entrance == 18)
        {
            x = obj_markerr.x
            y = obj_markerr.y
        }
        if (global.entrance == 19)
        {
            x = obj_markers.x
            y = obj_markers.y
        }
        if (global.entrance == 20)
        {
            x = obj_markert.x
            y = obj_markert.y
        }
        if (global.entrance == 21)
        {
            x = obj_markeru.x
            y = obj_markeru.y
        }
        if (global.entrance == 22)
        {
            x = obj_markerv.x
            y = obj_markerv.y
        }
        if (global.entrance == 23)
        {
            x = obj_markerw.x
            y = obj_markerw.y
        }
        if (global.entrance == 24)
        {
            x = obj_markerX.x
            y = obj_markerX.y
        }
    }
}
dsprite = spr_maincharad
rsprite = spr_maincharar
usprite = spr_maincharau
lsprite = spr_maincharal
if (global.flag[85] == 1)
{
    dsprite = spr_maincharad_umbrella
    rsprite = spr_maincharar_umbrella
    usprite = spr_maincharau_umbrella
    lsprite = spr_maincharal_umbrella
}
if (global.facing == 0)
    sprite_index = dsprite
if (global.facing == 1)
    sprite_index = rsprite
if (global.facing == 2)
    sprite_index = usprite
if (global.facing == 3)
    sprite_index = lsprite
if (global.flag[480] == 1)
    image_blend = merge_color(c_gray, c_white, 0.3)
inwater = 0
h_skip = 0
uncan = 0
m_override = 0
