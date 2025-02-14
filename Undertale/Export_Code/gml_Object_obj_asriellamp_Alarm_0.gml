snd_play(snd_noise)
if (background_visible[1] == 1)
{
    background_visible[0] = 1
    background_visible[1] = 0
    idealvolume[0] = 0
    idealvolume[1] = 1
}
else
{
    background_visible[0] = 0
    background_visible[2] = 0
    background_visible[1] = 1
    idealvolume[0] = 1
    idealvolume[1] = 0
}
myinteract = 0
global.interact = 0
