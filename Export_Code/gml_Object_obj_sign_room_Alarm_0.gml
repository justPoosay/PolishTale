myinteract = 3
global.msc = 0
global.typer = 5
global.facechoice = 0
global.faceemotion = 0
if (room == room_ruins12B || room == room_fire_spidershop)
    global.msg[0] = scr_gettext("obj_sign_room_66")
if (room == room_tundra3)
{
    global.msg[0] = scr_gettext("obj_sign_room_90")
    global.msg[1] = scr_gettext("obj_sign_room_91")
    global.msg[2] = scr_gettext("obj_sign_room_92")
    global.msg[3] = scr_gettext("obj_sign_room_93")
}
if (room == room_tundra5)
    global.msg[0] = scr_gettext("obj_sign_room_97")
if (room == room_tundra6)
{
    global.msg[0] = scr_gettext("obj_sign_room_101")
    global.msg[1] = scr_gettext("obj_sign_room_102")
    global.msg[2] = scr_gettext("obj_sign_room_103")
}
if (room == room_tundra8)
{
    global.msg[0] = scr_gettext("obj_sign_room_107")
    global.msg[1] = scr_gettext("obj_sign_room_108")
    global.msg[2] = scr_gettext("obj_sign_room_109")
}
if (room == room_tundra8A)
{
    global.msg[0] = scr_gettext("obj_sign_room_113")
    global.msg[1] = scr_gettext("obj_sign_room_114")
    global.msg[2] = scr_gettext("obj_sign_room_116")
    global.msg[3] = scr_gettext("obj_sign_room_117")
}
if (room == room_tundra_snowpuzz)
{
    global.msg[0] = scr_gettext("obj_sign_room_119")
    if (talkedto == 1)
        global.msg[0] = scr_gettext("obj_sign_room_120")
}
if (room == room_tundra_xoxopuzz || room == room_tundra_xoxosmall)
    global.msg[0] = scr_gettext("obj_sign_room_121")
if (room == room_tundra_lesserdog)
    global.msg[0] = scr_gettext("obj_sign_room_123")
if (room == room_tundra_poffzone)
    global.msg[0] = scr_gettext("obj_sign_room_124")
if (room == room_tundra_iceentrance)
    global.msg[0] = scr_gettext("obj_sign_room_126")
if (room == room_water3)
{
    global.msg[0] = scr_gettext("obj_sign_room_130")
    global.msg[1] = scr_gettext("obj_sign_room_131")
    global.msg[2] = scr_gettext("obj_sign_room_132")
    global.msg[3] = scr_gettext("obj_sign_room_133")
}
if (room == room_water5)
{
    global.msg[0] = scr_gettext("obj_sign_room_145")
    global.msg[1] = scr_gettext("obj_sign_room_146")
}
if (room == room_water_mushroom)
    global.msg[0] = scr_gettext("obj_sign_room_151")
if (room == room_water_prewaterfall)
    global.msg[0] = scr_gettext("obj_sign_room_156")
if (room == room_water_friendlyhub)
    global.msg[0] = scr_gettext("obj_sign_room_163")
if (room == room_water_undynehouse)
    global.msc = 706
if (room == room_tundra_town)
{
    global.msg[0] = scr_gettext("obj_sign_room_207")
    global.msg[1] = scr_gettext("obj_sign_room_208")
}
if (room == room_water_temvillage)
{
    global.msg[0] = scr_gettext("obj_sign_room_220")
    if (x > 270)
        global.msg[0] = scr_gettext("obj_sign_room_221")
    if (x > 330)
        global.msg[0] = scr_gettext("obj_sign_room_222")
}
if (room == room_fire_hoteldoors)
{
    global.msg[0] = scr_gettext("obj_sign_room_227")
    global.msg[1] = scr_gettext("obj_sign_room_228")
}
mydialoguer = instance_create(0, 0, obj_dialoguer)
talkedto += 1
