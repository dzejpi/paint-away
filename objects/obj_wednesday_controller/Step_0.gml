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
			audio_play_sound(snd_cloud_change, 10, false);
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
				text[1] = "Can't surprise me with this anymore. I am ready for this.";
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
			audio_play_sound(snd_cloud_change, 10, false);
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
	
	case 8:
		if !waiting_for_finish
		{
			current_event_number += 1;
			
			var _delusion_walk = instance_create_depth(-32, 448, 0, obj_blue_delusion);
			with(_delusion_walk)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
		}
	break;
	
	case 9:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the skies.";
			obj_gui_controller.timer = 3;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 10:
		obj_drawing_brush.rotation_speed = 9;
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Wh--aw--w--www what -iis t-that?";
				text[1] = "No. I can't see them again!";
				text[2] = "If-if-if-ifi-fff-iff I i-ignore them, th-they will go a-way.";
				text[3] = "It's time to draw pyramids.";
				
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
	
	case 11:
		obj_drawing_brush.rotation_speed = 11;
	
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint pyramids.";
			obj_gui_controller.timer = 15;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 12:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Calm down.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Everything is fine.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 9;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 13:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Calm. Down.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Calm. Down.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 60;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 7;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 14:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "You are OK.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Everything is fine.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 45;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			
			obj_drawing_brush.rotation_speed = 5;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 15:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Everything is OK.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Focus.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 25;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 3;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 16:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Draw the damn pyramids.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Draw.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 50;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 2;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 17:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Draw the damn pyramids.";
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
	
	case 18:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Good enough.";
				text[1] = "I am not on Sahara, but I am definitely sweating like if I were there.";
				text[2] = "Palm trees. I have to paint palm trees now. What kind of color should I even use for those?";
				
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
	
	case 19:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint happy little palm trees.";
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
	
	case 20:
		if !waiting_for_finish
		{
			current_event_number += 1;
			
			var _delusion_walk_two = instance_create_depth(600, 448, 0, obj_green_delusion);
			with(_delusion_walk_two)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 601;

				going_back = false;

				destroy_after = true;
			}
		}
	break;
	
	case 21:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "I should go.";
				text[1] = "This will do";
				text[2] = "Back into the safety.";
				
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
	
	case 22:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Leave.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Leave.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 50;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 2;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 23:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
		}
	break;
}