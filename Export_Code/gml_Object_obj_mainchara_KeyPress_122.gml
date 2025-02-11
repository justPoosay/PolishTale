var flag_index, flag_message;
if (global.debug == true)
{
    flag_index = get_integer("Enter a flag to check its value: ", 5)
    while (flag_index >= 4 && flag_index < array_length_1d(global.flag))
    {
        flag_message = "global.flag[" + string(flag_index) + "] = " + string(global.flag[flag_index])
        show_message(flag_message)
        flag_index = get_integer("Enter a flag to check its value: ", "")
    }
    show_message("input empty or invalid, exiting...")
    exit
}
