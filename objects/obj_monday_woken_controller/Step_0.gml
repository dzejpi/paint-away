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

				text[0] = "Oh man, was I dreaming?";
				text[1] = "That was the weirdest dream I have ever had.";
				
				text_current = 0;
				text_last = 1;
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

				text[0] = "It seems that I fell asleep for a little while.";
				text[1] = "I still feel like having a heart attack.";
				text[2] = "Well, it's time to finally paint something for real! Let's start with the sky!";

				text_current = 0;
				text_last = 2;
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
			obj_gui_controller.current_game_day = "Monday, really.";
			
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the sky!";
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
	
	case 3:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Nothing personal, but I would prefer to be alone for a little while.";
				text[1] = "Thank you for being here with me.";

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
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
			obj_next_room_transitioner.displayed_text = "";
			obj_next_room_transitioner.secondary_text = "";
		}
	break;
}