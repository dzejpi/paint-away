/// @description Insert description here
// You can write your code in this editor
var _intro_object = instance_create_depth(x, y, 0, obj_daily_intro_handler);
with(_intro_object)
{
	depth = -100;
	alpha = 1;

	indentation = 84;

	text[0] = "I will tell you something. Just between us. You seem nice. --[Press Space to continue]--";
	text[1] = "I spent the last few years in my room. Not that I am some kind of nerd. I had my own reasons.";
	text[2] = "You know, I used to have everything. Still have enough to live comfortably though. Not that I am bragging.";
	text[3] = "I still think about them every day. Pills took them away. But I feel good after them.";
	text[4] = "To not bore you with details - today, I decided to finally paint again after many years.";
	text[5] = "Outside feels pretty nice, I have to admit. Fresh air feels different after so many years.";
	text[6] = "This seems like a nice place. Let's see how it goes. I will try my new technique.";

	text_current = 0;
	text_last = 6;
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

obj_gui_controller.current_game_day = "Monday";