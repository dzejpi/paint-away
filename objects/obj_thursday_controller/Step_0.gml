/// @description Insert description here
// You can write your code in this editor
if random_brush_sorting
{
	if random_delay <= 0
	{
		obj_variable_holder.selectedColor = irandom_range(1, 16);
		obj_variable_holder.selectedBrush = irandom_range(1, 8);
		
		random_delay = 5;
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

				text[0] = "You know, I wanted to give up after yesterday. But I am not the type to give up easily.";
				text[1] = "I took my pills with me today. To be extra sure.";
				text[2] = "Today is gonna be fine though, I am absolutely sure about that.";
				text[3] = "No deserts today. I had enough yesterday.";
				text[4] = "OH NO! I FORGOT TO BUY BETTER COLORS!";
				text[5] = "Oh well, I will wing it. As always.";
				text[6] = "This place looks alright. I will paint here.";

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

				text[0] = "This place will do.";
				text[1] = "I think I should go with the usual way today.";
				text[2] = "Sky first, then the ground, then the rest!";
				text[3] = "Stay calm today!";
				
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
			
			obj_gui_controller.current_objective = "Paint the calm sky.";
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
	
	case 3:
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
	
	case 4:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Ha! I tricked you, sky. I already have it.";
				text[1] = "Go as crazy as you want, I already have you on my canvas.";
				text[2] = "Aahaahah aaha aha, sky, you cannot do anything to me!";
				text[3] = "Now, the ground. It's layered. I should start with top layers";
				
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
				cloud_speed_increments = 0;
			}
		}
	break;
	
	case 5:
		if cloud_speed_increments < 60
		{
			cloud_speed_increments += 1;
			cloud_speed += 0.1;
			layer_hspeed("Backgrounds_2", cloud_speed);
		} else
		{
			cloud_speed_increments = 0;
			current_event_number += 1;
		}
	break;
	
	case 6:
		if cloud_speed_increments < 120
		{
			cloud_speed_increments += 1;
			cloud_speed -= 0.1;
			layer_hspeed("Backgrounds_2", cloud_speed);
		} else
		{
			cloud_speed_increments = 0;
			current_event_number += 1;
		}
	break;
	
	case 7:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Paint the upper layers of the ground.";
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
			
			var _delusion_walk = instance_create_depth(-32, 400, 0, obj_blue_delusion);
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
		layer_hspeed("Backgrounds_2", random_range(0, 2));
	
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Now, the rest of the ground.";
				text[1] = "This goes pretty well.";
				text[2] = "Oh, look at that.";
				text[3] = "I've already seen you! Nothing new. Buzz off!";
				
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
				cloud_speed_increments = 0;
			}
		}
	break;
	
	case 10:
		layer_hspeed("Backgrounds_2", random_range(0, 2));
		
		if !waiting_for_finish
		{
			var _delusion_walk_two = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_two)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
			var _delusion_walk_three = instance_create_depth(720, 400, 0, obj_blue_delusion);
			with(_delusion_walk_three)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 721;

				going_back = false;

				destroy_after = true;
			}
			
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Finish the ground.";
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
		layer_hspeed("Backgrounds_2", random_range(0, 2));
		obj_drawing_brush.rotation_speed = 9;
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Everything is fine.";
				
				text_current = 0;
				text_last = 0;
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
	
	case 12:
		layer_hspeed("Backgrounds_2", random_range(-2, 2));
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Calm down.";
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = true;
			}
			
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
		obj_drawing_brush.rotation_speed = 9;
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Ugh, gross.";
				text[1] = "That is closer than it should.";
				text[2] = "I have to remember that they are not real.";
				text[3] = "W-w-hat is the next part? Tree trunks, right?";
				
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
			obj_drawing_brush.rotation_speed = 20;
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
			
			obj_gui_controller.current_objective = "Paint tree trunks.";
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
	
	case 15:
		layer_hspeed("Backgrounds_2", random_range(-2, 2));
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Tree trunks!";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Can't draw like this!";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			
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
			obj_gui_controller.current_objective = "Tree trunks! Focus!";
			
			var _delusion_climb_two = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = true;
			}
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Calm down!";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
				current_flash = 0;
				alpha = 0;

				is_flashed = false;
			}
			obj_drawing_brush.rotation_speed = 15;
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
		
		layer_hspeed("Backgrounds_2", random_range(-2, 2));
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Tree trunks! Focus!";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Deep breath.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 18:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Paint tree trunks.";
			
			var _delusion_climb_three = instance_create_depth(1004, 800, 0, obj_blue_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = true;
			}
			
			var _delusion_walk_two = instance_create_depth(-64, 451, 0, obj_blue_delusion);
			with(_delusion_walk_two)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
			var _delusion_walk_three = instance_create_depth(720, 490, 0, obj_blue_delusion);
			with(_delusion_walk_three)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 721;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_four = instance_create_depth(-64, 427, 0, obj_blue_delusion);
			with(_delusion_walk_four)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = false;
				destroy_after = false;
			}
			
			var _delusion_walk_five = instance_create_depth(720, 403, 0, obj_blue_delusion);
			with(_delusion_walk_five)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 721;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_six = instance_create_depth(720, 480, 0, obj_blue_delusion);
			with(_delusion_walk_six)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 727;

				going_back = false;

				destroy_after = false;
			}
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Everything is OK.";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 19:
		layer_hspeed("Backgrounds_2", random_range(-2, 2));
		
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "I am alright.";
				text[1] = "I can do this.";
				text[2] = "Tree trunks are easy.";
				text[3] = "There were no trunks yesterday. That was easy.";
				
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
	
	case 20:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Finish tree trunks already.";
			obj_gui_controller.timer = 10;
			
			var _delusion_climb_five = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_five)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_six = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_six)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_seven = instance_create_depth(1004, 840, 0, obj_blue_delusion);
			with(_delusion_climb_seven)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
		} else
		{
			if obj_gui_controller.timer = 0
			{
				waiting_for_finish = false;
				current_event_number += 1;
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

				text[0] = "I can do this.";
				text[1] = "I can do this.";
				text[2] = "I can do this.";
				text[3] = "Finish everything.";
				
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
	
	case 22:
		if !waiting_for_finish
		{
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Finish the painting.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "What is wrong?";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 23:
		if !waiting_for_finish
		{
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Finish the painting.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "What is wrong with you?";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 24:
		if !waiting_for_finish
		{
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Finish the painting.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Just draw!";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 25:
		if !waiting_for_finish
		{
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			obj_gui_controller.current_objective = "Finish the painting.";
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Just draw! Draw! Draw!";
				text_color = make_color_rgb(0, 0, 0);

				flash_duration = 75;
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
	
	case 26:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			obj_gui_controller.current_objective = "Finish the painting.";
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
	
	case 27:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
			obj_next_room_transitioner.displayed_text = "Not really a great job!";
			obj_next_room_transitioner.secondary_text = "Y ou pa sse d   ou t    a  n o t  her d a y !";
		}
	break;
	
}