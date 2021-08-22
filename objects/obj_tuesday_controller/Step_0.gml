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

				text[0] = "Yesterday was pretty nice!";
				text[1] = "I had a lot of fun. It's not as safe outside, but it's exciting!";
				text[2] = "... I still have to think about them. I'm fine, but I am not used to being outside this much.";
				text[3] = "But I love painting. It makes me feel alive again.";
				text[4] = "Maybe I should hang those paintings somewhere in my home.";
				text[5] = "Would that be considered narcissism? I have to look at the internet.";
				text[6] = "I'm in my destination anyway. Time to start.";

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

				text[0] = "Oh no. These colors I bought don't seem to match that well.";
				text[1] = "What do you want for this price. Well, here goes nothing. I will do my best!";
				text[2] = "Starting with the sky, just like yesterday. Here we go!";

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
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the sky.";
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
		if cloud_speed_increments < 30
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.2;
			layer_hspeed("Backgrounds_2", cloud_speed);
			audio_play_sound(snd_cloud_change, 10, false);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 4:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "What is that?";
				text[1] = "No, no, no, no, this is not happening!";
				text[2] = "Just ignore this.";

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
			obj_drawing_brush.rotation_speed = 4;
		} else
		{
			if !instance_exists(obj_dialog_handler)
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
			
			obj_gui_controller.current_objective = "Finish sky. Everything is OK.";
			obj_gui_controller.timer = 15;
			
			obj_drawing_brush.rotation_speed = 6;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
		obj_drawing_brush.rotation_speed = 6;
	break;
	
	case 6:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Everything is OK.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Everything is OK.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 50;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 8;
		} else
		{
			if !(instance_exists(obj_text_flasher))
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 7:
		if cloud_speed > 0.1
		{
			cloud_speed -= 0.2;
			layer_hspeed("Backgrounds_2", cloud_speed);
			audio_play_sound(snd_cloud_change, 10, false);
		} else
		{
			cloud_speed_increments = 0;
			current_event_number += 1;
		}
		obj_drawing_brush.rotation_speed = 10;
	break;
	
	case 8:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Everything is fine.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Everything is fine.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 50;
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
	
	case 9:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "I'm alright.";
				text[1] = "Just strong wings, maybe.";
				text[2] = "*phew* I-I though I was stronger than this.";
				text[3] = "I need to finish the painting. What goes next? Green fields, right?";

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
			
			obj_drawing_brush.rotation_speed = 5;
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
			
			obj_gui_controller.current_objective = "Paint the green fields, I think.";
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
	
	case 11:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "I'm alright. I'm alright. I must calm down. Breathe deeply.";
				text[1] = "Everything i-is OK. Ye-yesterday, I think I continued with trees.";
				text[2] = "But I should go with the ground now, actually.";
				text[3] = "Why am I even in such a place? I should go somewhere higher.";
				text[4] = "Whatever.";
				
				text_current = 0;
				text_last = 4;
				text_width = 1056 - (indentation*2);
				text_x = x + indentation;
				text_y = 60 + (indentation * 6);

				char_current = 1;
				char_speed = 0.25;

				text[text_current] = scr_string_wrap(text[text_current], text_width);

				delay = 180;
				auto_countdown = delay;
			}
			obj_drawing_brush.rotation_speed = 3;
		} else
		{
			if !instance_exists(obj_dialog_handler)
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
			
			obj_gui_controller.current_objective = "Paint the ground.";
			obj_gui_controller.timer = 45;
		} else
		{
			if obj_gui_controller.timer = 0
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
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Now it's time for trees.";
				text[1] = "These ones are so dense that I can't even see their trunks.";
				text[2] = "Less work for me! I don't complain.";
				
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
			obj_drawing_brush.rotation_speed = 3;
		} else
		{
			if !instance_exists(obj_dialog_handler)
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
			
			obj_gui_controller.current_objective = "Paint happy little trees.";
			obj_gui_controller.timer = 45;
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 15:
		if cloud_speed_increments < 15
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.2;
			layer_hspeed("Backgrounds_2", cloud_speed);
			audio_play_sound(snd_cloud_change, 10, false);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 16:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "You know what?";
				text[1] = "I don't care. I'm alright";
				
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
			obj_drawing_brush.rotation_speed = 3;
		} else
		{
			if !instance_exists(obj_dialog_handler)
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 17:
		if cloud_speed_increments < 30
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.2;
			layer_hspeed("Backgrounds_2", cloud_speed);
			audio_play_sound(snd_cloud_change, 10, false);
		} else
		{
			current_event_number += 1;
		}
	break;
	
	case 18:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Finish your painting.";
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
	
	case 19:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Interesting.";
				text[1] = "I think I should go home now. This will do.";
				
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
			obj_drawing_brush.rotation_speed = 3;
		} else
		{
			if !instance_exists(obj_dialog_handler)
			{
				waiting_for_finish = false;
				current_event_number += 1;
			}
		}
	break;
	
	case 20:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
		}
	break;
}