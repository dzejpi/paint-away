/// @description Insert description here
// You can write your code in this editor
var length = string_length(text[text_current]);

if keyboard_check_released(vk_space)
{
	if (char_current < length)
	{
		char_current = length;
	} else
	{
		text_current += 1;
		if (text_current > text_last)
		{
			text_current = text_last;
			autodisappearing = true;
		} else
		{
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
			auto_countdown = delay;
		}
	}
}

if (char_current >= length)
{
	if auto_countdown > 0
	{
		auto_countdown -= 1;
	} else
	{
		auto_countdown = delay;
		text_current += 1;
		if (text_current > text_last)
		{
			text_current = text_last;
			autodisappearing = true;
		} else
		{
			text[text_current] = scr_string_wrap(text[text_current], text_width);
			char_current = 0;
		}
	}
}