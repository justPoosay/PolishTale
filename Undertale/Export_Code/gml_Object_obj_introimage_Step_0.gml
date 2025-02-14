if (act == 1)
{
    if control_check_pressed(0)
    {
        if (skip == false)
        {
            skip = true
            fader = instance_create(0, 0, obj_unfader)
            fader.tspeed = 0.05
            alarm[1] = 30
            with (OBJ_WRITER)
                instance_destroy()
        }
    }
}
