for (i = 0; i < 8; i += 1)
{
    siner2 = siner + i
    background_alpha[i] = 0.5 + (sin(siner2 / 8)) * 0.4
    background_x[i] += ((sin(siner2 / 8)) * 1)
}
siner += 1
