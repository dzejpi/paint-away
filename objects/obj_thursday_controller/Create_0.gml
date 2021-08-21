/// @description Insert description here
// You can write your code in this editor
var _intro_object = instance_create_depth(x, y, 0, obj_daily_intro_handler);
with(_intro_object)
{
	depth = -100;
	alpha = 1;

	indentation = 84;

	text[0] = "I will tell you something. Press Space to continue.";
	text[1] = "I spent the last few years in my room.";
	text[2] = "Few years ago, I had everything. Still have enough to live comfortably.";
	text[3] = "Although I was fortunate with having enough money, I spent some time";
	text[4] = "Anyway, I want to paint. The pain away.";
	text[5] = "Outside feels pretty nice, gotta admit. Alright, I am here.";
	text[6] = "Let's see how it goes.";

	text_current = 0;
	text_last = 6;
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

obj_gui_controller.current_game_day = "Thursday";
