/// @description Insert description here
// You can write your code in this editor
switch(current_event_number)
{
	case 0:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
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
				text[6] = "Make it stop. Get it out of my head!";
				text[7] = "Make it stop. Get it out of my head!";
				text[8] = "Make it stop. Get it out of my head!";
				text[9] = "Make it stop. Get it out of my head!";
				text[10] = "Make it stop. Get it out of my head!";

				text_current = 0;
				text_last = 10;
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
		} else
		{
			if !(instance_exists(obj_daily_intro_handler))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
}