view_xview[0] = random(shakex) - random(shakex)
view_yview[0] = random(shakey) - random(shakey)
if (turn1 == 0)
{
    view_xview[0] = shakex * (choose(1, -1))
    view_yview[0] = shakey * (choose(1, -1))
    turn1 = 1
}
if (decay == 1)
{
    shakex -= 1
    shakey -= 1
}
if (shakex <= 0 && shakey <= 0)
{
    view_xview[0] = 0
    view_yview[0] = 0
    instance_destroy()
}
