if (global.debug == true)
{
    if (playthesong == 0)
    {
        undyne = caster_load("music/undynetruetheme.ogg")
        caster_loop(undyne, 1, 1)
        playthesong = 1
    }
    global.flag[18] = 1
    fakedrawer = 1
    instance_create(0, 0, obj_flasher)
    scr_shake(3, 3, 2)
    view_object[0] = object_index
    view_hborder[0] = 160
    view_vborder[0] = 100
    view_wview[0] = 160
    view_hview[0] = 120
    snd_play(snd_damage)
    global.typer = 5
    global.msc = 0
    global.msg[0] = scr_gettext("obj_undynetrigger_boss_638")
    instance_create((10 + xx), (150 + yy), OBJ_WRITER)
    if (view_angle[0] <= 0)
        view_angle[0] = 10 + random(40)
    else
        view_angle[0] = -1 - random(40)
}
