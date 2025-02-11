if (hshake != 0)
{
    if (hshake < 0)
    {
        view_xview[myview] += hshake
        hshake += 1
    }
    if (hshake > 0)
        view_xview[myview] += hshake
    hshake = (-hshake)
}
if (vshake != 0)
{
    if (vshake > 0)
        view_yview[myview] += vshake
    if (vshake < 0)
    {
        view_yview[myview] += vshake
        vshake += 1
    }
    vshake = (-vshake)
}
alarm[myview] = shakespeed
if (hshake == 0 && vshake == 0)
    instance_destroy()
