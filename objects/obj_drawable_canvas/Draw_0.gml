/// @description Insert description here
// You can write your code in this editor
draw_rectangle_color(x, y, x + 200, y + 300, c_white, c_white, c_white, c_white, false);

if (!surface_exists(my_surface))
{ 
	my_surface = surface_create(200, 300);
}

if (mouse_check_button(mb_left))
{
	surface_set_target(my_surface);
	
	draw_sprite_ext(scr_get_proper_brush(), 0, mouse_x - 200, mouse_y - 300, 0.15, 0.15, obj_drawing_brush.brush_rotation, scr_get_proper_color(), 1);

	surface_reset_target();
}

//Draw surface
draw_surface(my_surface, x, y);