/// @description Insert description here
indentation = 48;

// Text colors
button_text_color = make_colour_rgb(236, 235, 231);
shadow_text_color = make_colour_rgb(128, 123, 122);

countdown = 4000;

game_ended = false;

var _intro_object = instance_create_depth(x, y, 0, obj_daily_intro_handler);
with(_intro_object)
{
	depth = -100;
	alpha = 1;

	indentation = 84;

	text[0] = "Thank you for playing!";

	text_current = 0;
	text_last = 0;
	text_width = 1112;
	text_x = x + indentation;
	text_y = 60 + (indentation * 3);

	char_current = 1;
	char_speed = 0.25;

	text[text_current] = scr_string_wrap(text[text_current], text_width);

	delay = 300;
	auto_countdown = delay;

	autodisappearing = false;
	}