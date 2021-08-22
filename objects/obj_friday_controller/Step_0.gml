/// @description Insert description here
// You can write your code in this editor
if random_brush_sorting
{
	if random_delay <= 0
	{
		obj_variable_holder.selectedColor = irandom_range(1, 16);
		obj_variable_holder.selectedBrush = irandom_range(1, 8);
		
		random_delay = delay_speed;
	} else
	{
		random_delay -= 1;
	}
}

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
	
	case 1:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Did I pass out? What day is it?";
				text[1] = "What is going on?";
				text[2] = "Paint. I must paint.";
				text[3] = "Please, just let me paint. I am in pain... in the process of painting.";
				
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
		if cloud_speed_increments < 15
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.2;
			layer_hspeed("Backgrounds_2", cloud_speed);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 3:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Just paint. Anything.";
			obj_gui_controller.timer = 20;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 4:
	
	break;
	
	case 5:
	
	break;
	
	case 6:
	
	break;
	
	case 7:
	
	break;
	
	case 8:
	
	break;
	
	case 9:
	
	break;
	
	case 10:
	
	break;
	
	case 11:
	
	break;
	
	case 12:
	
	break;
}