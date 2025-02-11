var oldstring, newchar, len, lastchar, compose4, compose3, compose2;
oldstring = argument0
newchar = argument1
len = strlen(oldstring)
if (!((newchar >= "a" && newchar <= "z")))
{
    if (oldstring != "" && string_char_at(oldstring, len) == "n")
        oldstring = (substr(oldstring, 1, (len - 1))) + "ん"
    if (newchar == "-")
        newchar = "ー"
    if (newchar == "/")
        newchar = "・"
    if (newchar == "[")
        newchar = "「"
    if (newchar == "]")
        newchar = "」"
    return (oldstring + newchar);
}
if (oldstring == "")
    return newchar;
lastchar = string_char_at(oldstring, len)
if (!((lastchar >= "a" && lastchar <= "z")))
{
    if (newchar == "a")
        newchar = "あ"
    if (newchar == "i")
        newchar = "い"
    if (newchar == "u")
        newchar = "う"
    if (newchar == "e")
        newchar = "え"
    if (newchar == "o")
        newchar = "お"
    return (oldstring + newchar);
}
if (!((newchar == "a" || newchar == "i" || newchar == "u" || newchar == "e" || newchar == "o")))
{
    if (lastchar == "n")
    {
        oldstring = (substr(oldstring, 1, (len - 1))) + "ん"
        lastchar = "ん"
    }
    else if (newchar == lastchar)
    {
        oldstring = (substr(oldstring, 1, (len - 1))) + "っ"
        lastchar = "っ"
    }
}
if (len >= 3)
{
    compose4 = ds_map_find_value(global.kanatype_lookup_4ch, ((substr(oldstring, (len - 3))) + newchar))
    if (!is_undefined(compose4))
        return ((substr(oldstring, 1, (len - 3))) + compose4);
}
if (len >= 2)
{
    compose3 = ds_map_find_value(global.kanatype_lookup_3ch, ((substr(oldstring, (len - 1))) + newchar))
    if (!is_undefined(compose3))
        return ((substr(oldstring, 1, (len - 2))) + compose3);
}
compose2 = ds_map_find_value(global.kanatype_lookup_2ch, (lastchar + newchar))
if (!is_undefined(compose2))
    return ((substr(oldstring, 1, (len - 1))) + compose2);
if (newchar == "a")
    newchar = "あ"
if (newchar == "i")
    newchar = "い"
if (newchar == "u")
    newchar = "う"
if (newchar == "e")
    newchar = "え"
if (newchar == "o")
    newchar = "お"
return (oldstring + newchar);
