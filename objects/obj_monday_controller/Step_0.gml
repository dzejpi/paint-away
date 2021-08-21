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

				text[0] = "What a beautiful day!";
				text[1] = "I will start with with the sky.";

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
	
	case 2:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the sky!";
			obj_gui_controller.timer = 60;
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

				text[0] = "That looks interesting.";
				text[1] = "I should paint the field now.";

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
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the field.";
			obj_gui_controller.timer = 60;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
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

				text[0] = "Good base. Now is the time for tree trunks.";
				text[1] = "I think they draw leaves later.";

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
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the tree trunks.";
			obj_gui_controller.timer = 60;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 7:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Close enough. I guess.";
				text[1] = "I dont want acid rain trees though. They need leaves.";

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
	
	case 8:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint happy little trees!";
			obj_gui_controller.timer = 60;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 9:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "This seems enough for today, really.";
				text[1] = "I bet I will do a better job tomorrow.";

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
	
	case 10:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
		}
	break;
}