/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(x_position, y_position, x_two_position, y_two_position, c_white, c_white, c_white, c_white, false);

if (!surface_exists(my_surface))
{ 
	my_surface = surface_create(canvas_width, canvas_height);
}

if (mouse_check_button(mb_left))
{
	surface_set_target(my_surface);
	
	draw_sprite_ext(scr_get_proper_brush(), 0, mouse_x - canvas_width - 48, mouse_y - 24, 0.15, 0.15, obj_drawing_brush.brush_rotation, scr_get_proper_color(), 1);

	surface_reset_target();
}

//Draw surface
draw_surface(my_surface, x_position, y_position);