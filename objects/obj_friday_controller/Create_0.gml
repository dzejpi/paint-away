/// @description Insert description here
// You can write your code in this editor
var _intro_object = instance_create_depth(x, y, 0, obj_daily_intro_handler);
with(_intro_object)
{
	depth = -100;
	alpha = 1;

	indentation = 84;

	text[0] = "Make it stop. Get it out of my head!";
	text[1] = "Make it stop. Get it out of my head!";
	text[2] = "Make it stop. Get it out of my head!";
	text[3] = "Make it stop. Get it out of my head!";
	text[4] = "Make it stop. Get it out of my head!";
	text[5] = "Make it stop. Get it out of my head!";
	
	text_current = 0;
	text_last = 5;
	text_width = 1112;
	text_x = x + indentation;
	text_y = 60 + (indentation * 3);

	char_current = 1;
	char_speed = 0.25;

	text[text_current] = scr_string_wrap(text[text_current], text_width);

	delay = 180;
	auto_countdown = delay;

	autodisappearing = false;
}

obj_gui_controller.current_game_day = "Friday";
