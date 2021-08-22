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
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
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
			obj_drawing_brush.rotation_speed = 3;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
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
		obj_drawing_brush.rotation_speed = 4;
		layer_hspeed("Backgrounds_2", random_range(-4, 4));
		
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
			obj_drawing_brush.rotation_speed = 5;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
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
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 8;
			delay_speed = 8;
			
			obj_gui_controller.current_objective = "Finish everything already.";
			obj_gui_controller.timer = 10;
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_two = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_three = instance_create_depth(1004, 840, 0, obj_blue_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_one = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_one)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
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
			
			var _delusion_walk_five = instance_create_depth(720, 400, 0, obj_blue_delusion);
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
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 11;
			delay_speed = 7;
			
			_inst = instance_create_depth(x, y, 0, obj_dialog_handler);
			with(_inst)
			{
				indentation = 84;

				text[0] = "Paint.";
				text[1] = "Pain.";
				text[2] = "Paint. I must paint.";
				text[3] = "Paint.";
				
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
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_green_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_two = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_three = instance_create_depth(1004, 840, 0, obj_green_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_one = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_one)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
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
			
			var _delusion_walk_three = instance_create_depth(720, 400, 0, obj_green_delusion);
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
			
			var _delusion_walk_five = instance_create_depth(720, 400, 0, obj_green_delusion);
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
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 12;
			delay_speed = 6;
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_green_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_two = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_three = instance_create_depth(1004, 840, 0, obj_green_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_one = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_one)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
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
			
			var _delusion_walk_five = instance_create_depth(720, 400, 0, obj_green_delusion);
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
	
	case 7:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 14;
			delay_speed = 5;
			
			obj_gui_controller.current_objective = "Pain.";
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
	
	case 8:
		if !waiting_for_finish
		{
			obj_drawing_brush.rotation_speed = 15;
			delay_speed = 4;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Paint.";
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
	
	case 9:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 16;
			delay_speed = 2;
			
			obj_gui_controller.current_objective = "P A I NT.";
			obj_gui_controller.timer = 10;
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 2;
				image_y_scale = 2;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_two = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 2;
				image_y_scale = 2;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_three = instance_create_depth(1004, 840, 0, obj_blue_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 2;
				image_y_scale = 2;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_one = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_one)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 2;
				image_y_scale = 2;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
			var _delusion_walk_two = instance_create_depth(-64, 450, 0, obj_green_delusion);
			with(_delusion_walk_two)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 2;
				image_y_scale = 2;

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
				
				image_x_scale = 2;
				image_y_scale = 2;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_four = instance_create_depth(-64, 427, 0, obj_blue_delusion);
			with(_delusion_walk_four)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 2;
				image_y_scale = 2;

				going_back = false;

				destroy_after = false;
				destroy_after = false;
			}
			
			var _delusion_walk_five = instance_create_depth(720, 400, 0, obj_green_delusion);
			with(_delusion_walk_five)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 721;

				image_x_scale = 2;
				image_y_scale = 2;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_six = instance_create_depth(720, 480, 0, obj_green_delusion);
			with(_delusion_walk_six)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 727;
				
				image_x_scale = 2;
				image_y_scale = 2;

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
	
	case 10:
		delay_speed = 3;
		layer_hspeed("Backgrounds_2", random_range(-4, 4));
		
		if !waiting_for_finish
		{
			obj_drawing_brush.rotation_speed = 18;
			delay_speed = 4;
			
			random_brush_sorting = true;
			
			waiting_for_finish = true;
			
			var _delusion_climb_one = instance_create_depth(524, 800, 0, obj_blue_delusion);
			with(_delusion_climb_one)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 4;
				image_y_scale = 4;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_two = instance_create_depth(524, 950, 0, obj_blue_delusion);
			with(_delusion_climb_two)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 3;
				image_y_scale = 3;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_climb_three = instance_create_depth(1004, 840, 0, obj_blue_delusion);
			with(_delusion_climb_three)
			{
				is_climbing = true;

				original_y_pos = 800;
				climbing_to_y = 100;
				
				image_x_scale = 3;
				image_y_scale = 3;
				
				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_one = instance_create_depth(-64, 450, 0, obj_blue_delusion);
			with(_delusion_walk_one)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 4;
				image_y_scale = 4;

				going_back = false;

				destroy_after = true;
				one_time_walk = true;
			}
			
			var _delusion_walk_two = instance_create_depth(-64, 450, 0, obj_green_delusion);
			with(_delusion_walk_two)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 4;
				image_y_scale = 4;

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
				
				image_x_scale = 3;
				image_y_scale = 3;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_four = instance_create_depth(-64, 427, 0, obj_blue_delusion);
			with(_delusion_walk_four)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 720;
				
				image_x_scale = 4;
				image_y_scale = 4;

				going_back = false;

				destroy_after = false;
				destroy_after = false;
			}
			
			var _delusion_walk_five = instance_create_depth(720, 400, 0, obj_green_delusion);
			with(_delusion_walk_five)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 721;

				image_x_scale = 4;
				image_y_scale = 4;

				going_back = false;

				destroy_after = false;
			}
			
			var _delusion_walk_six = instance_create_depth(720, 480, 0, obj_green_delusion);
			with(_delusion_walk_six)
			{
				is_walking = true;

				original_x_pos = -32;
				walking_to_x = 727;
				
				image_x_scale = 4;
				image_y_scale = 4;

				going_back = false;

				destroy_after = false;
			}
			
			var _flash_object = instance_create_depth(x, y, 0, obj_text_flasher)
			with(_flash_object)
			{
				text_font = font_kenney_future_fourty_eight;
				text_displayed = "Pain.";
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
	
	case 11:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			obj_drawing_brush.rotation_speed = 20;
			delay_speed = 1;
			
			obj_gui_controller.current_objective = "P A I N";
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
	
	case 12:
		if !waiting_for_finish
		{
			waiting_for_finish = true;
			layer_hspeed("Backgrounds_2", random_range(-4, 4));
			
			instance_create_depth(x, y, 0, obj_next_room_transitioner);	
			obj_next_room_transitioner.displayed_text = "P  A  I  N  T";
			obj_next_room_transitioner.secondary_text = "";
		}
	break;
}