if (!variable_global_exists('user_input'))
{
    globalvar user_input, __lastlength, __press;
    user_input = '';
    __lastlength = string_length(keyboard_string);
    __press = current_time;
}
user_input += string_delete(keyboard_string, 1, __lastlength);  //Add the last typed character(s)
__lastlength = string_length(keyboard_string);
if (keyboard_check_pressed(vk_backspace)) 
{
    user_input = string_copy(user_input, 1, string_length(user_input) - 1);
    __press = current_time;
}
user_input = string_copy(user_input, 1, string_length(user_input) - (keyboard_check(vk_backspace) && current_time - __press > 450));
