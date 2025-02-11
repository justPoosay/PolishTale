if (x > (view_xview[0] - 100) && x < (view_xview[0] + view_wview[0] + 100))
{
    if (y > (view_yview[0] - 100) && y < (view_yview[0] + view_hview[0] + 100))
        instance_create((x + random(60) - 20), (y - 15), obj_glowparticle_1)
}
alarm[0] = 10
