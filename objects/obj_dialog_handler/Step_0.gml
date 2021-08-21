/// @description Insert description here
// You can write your code in this editor
if keyboard_check_released(vk_space)
{
	var length = string_length(text[text_current]);

	if (char_current < length)
	{
		char_current = length;
	} else
	{
		text_current += 1;
		if (text_current > text_last)
		{
			instance_destroy();
		} else
		{
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
		}
	}
}