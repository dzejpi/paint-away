/// @description Insert description here
// You can write your code in this editor
switch(current_event_number)
{
	case 0:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			var _intro_object = instance_create_depth(x, y, 0, obj_daily_intro_handler)
			with(_intro_object)
			{
				depth = -100;
				alpha = 1;

				indentation = 84;

				text[0] = "I can't stop thinking about yesterday.";
				text[1] = "The weather is definitely all over the place lately.";
				text[2] = "I wanted to go for a week without pills. But better be safe. Took them here.";
				text[3] = "But I don't need them.";
				text[4] = "Anyway, another day, another painting.";
				text[5] = "I really don't know what to think about these tourist parks that are so out of place.";
				text[6] = "We are not in the desert. So what the heck?";

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
		} else
		{
			if !(instance_exists(obj_daily_intro_handler))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 1:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "I complained about colors yesterday, but this takes the cake.";
				text[1] = "I should really get some better ones. What do you want to do with 16 colors?";
				text[2] = "Don't feel like going anywhere though. Let's just wing it. You can do it!";
				text[3] = "I usually start drawing with the sky. How about I try the ground first this time?";
				
				text_current = 0;
				text_last = 3;
				text_width = 1056 - (indentation*2);
				text_x = x + indentation;
				text_y = 60 + (indentation * 6);

				char_current = 1;
				char_speed = 0.25;

				text[text_current] = scr_string_wrap(text[text_current], text_width);

				delay = 180;
				auto_countdown = delay;
			}
		} else
		{
			if !instance_exists(obj_dialog_handler)
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 2:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the ground.";
			obj_gui_controller.timer = 10;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 3:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Looks good, gotta say!";
				text[1] = "Guess I need to draw the sky now. That's just how it is.";
				
				text_current = 0;
				text_last = 1;
				text_width = 1056 - (indentation*2);
				text_x = x + indentation;
				text_y = 60 + (indentation * 6);

				char_current = 1;
				char_speed = 0.25;

				text[text_current] = scr_string_wrap(text[text_current], text_width);

				delay = 180;
				auto_countdown = delay;
			}
		} else
		{
			if !instance_exists(obj_dialog_handler)
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 4:
		if cloud_speed_increments < 15
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.1;
			layer_hspeed("Backgrounds_2", cloud_speed);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 5:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Oh not this time.";
				text[1] = "Can't surprise me with this anymore. I am ready.";
				text[2] = "Drawing of the skies it is now.";
				
				text_current = 0;
				text_last = 1;
				text_width = 1056 - (indentation*2);
				text_x = x + indentation;
				text_y = 60 + (indentation * 6);

				char_current = 1;
				char_speed = 0.25;

				text[text_current] = scr_string_wrap(text[text_current], text_width);

				delay = 180;
				auto_countdown = delay;
			}
		} else
		{
			if !instance_exists(obj_dialog_handler)
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 6:
		if cloud_speed_increments < 30
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.1;
			layer_hspeed("Backgrounds_2", cloud_speed);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 7:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the skies.";
			obj_gui_controller.timer = 30;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
}